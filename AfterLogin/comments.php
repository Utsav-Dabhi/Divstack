 <?php
session_start();
include('../includes/dbconnection.php');

//Convert timestamp to string
function time_elapsed_string($datetime, $full = false) {
    $now = new DateTime;
    $ago = new DateTime($datetime);
    $diff = $now->diff($ago);
    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;
    $string = array('y' => 'year', 'm' => 'month', 'w' => 'week', 'd' => 'day', 'h' => 'hour', 'i' => 'minute', 's' => 'second');
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
        } else {
            unset($string[$k]);
        }
    }
    if (!$full) $string = array_slice($string, 0, 1);
    return $string ? implode(', ', $string) . ' ago' : 'just now';
}

// Generate Comments 
function show_comments($comments, $parent_id = -1) {
    $html = '';
    if ($parent_id != -1) {
        // If the comments are replies sort them by the "submit_date" column
        array_multisort(array_column($comments, 'created_at'), SORT_ASC, $comments);
    }
    // Iterate the comments using the foreach loop
    foreach ($comments as $comment) {
        if ($comment['parent_id'] == $parent_id) {
            // Add the comment to the $html variable
           
            $html .= '
            <div class="container">
            <div class="row d-flex justify-content-center">
            <div class="col-lg-10">
                

                <div class="card p-3">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user d-flex flex-row align-items-center"> <i class="fas fa-user"></i>
                    <span> <small class="font-weight-bold text-primary" style="margin:10px"> '. htmlspecialchars($comment['name'], ENT_QUOTES) . '</small><br> 
                   <span> <small class="font-weight-bold" style="margin:10px">   ' . nl2br(htmlspecialchars($comment['content'], ENT_QUOTES)) . '</small></span> </div> 
                   <span><small >' . time_elapsed_string($comment['created_at']) . '</small></span> 
                </div>
                
                    
                </div>
                <p class="content"></p>
                <div class="action d-flex justify-content-between mt-2 align-items-center"></div>
                <small ><a class="reply_comment_btn"  href="#" data-comment-id="' . $comment['id'] . '">Reply</a></small>
                ' . show_write_comment_form($comment['id']) . '
                
                <div class="replies">
                ' . show_comments($comments, $comment['id']) . '
                </div>
            </div> 
            </div> 
            </div>
            ';
        }
    
    }
    return $html;
    
}

// This function is the template for the write comment form
function show_write_comment_form($parent_id = -1) {
    
    
    $html = '
    <div class="write_comment" data-comment-id="' . $parent_id . '">
        <form>
            <input name="parent_id" type="hidden" value="' . $parent_id . '">
            
            <textarea style="width:300px ;height:30%;margin-left:30px" name="content" placeholder="Write your comment here..." required></textarea>
           <br> <button style="margin:30px" type="submit" class="btn btn-primary">Submit a Comment</button>
        </form>
    </div>
    ';
    return $html;
}
// Page ID needs to exist, this is used to determine which comments are for which page
if (isset($_GET['course_id'])) {
    // Check if the submitted form variables exist
    if (isset( $_POST['content'])) {
        // POST variables exist, insert a new comment into the MySQL comments table (user submitted form)
        $stmt = $dbh->prepare('INSERT INTO comments (course_id, parent_id, name, content, created_at) VALUES (?,?,?,?,NOW())');
        $stmt->execute([ $_GET['course_id'], $_POST['parent_id'], $_SESSION['login'], $_POST['content'] ]);
        exit('Your comment has been submitted!');
    }
    // Get all comments by the Page ID ordered by the submit date
    $stmt = $dbh->prepare('SELECT * FROM comments WHERE course_id = ? ORDER BY created_at DESC');
    $stmt->execute([ $_GET['course_id'] ]);
    $comments = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // Get the total number of comments
    $stmt = $dbh->prepare('SELECT COUNT(*) AS total_comments FROM comments WHERE course_id = ?');
    $stmt->execute([ $_GET['course_id'] ]);
    $comments_info = $stmt->fetch(PDO::FETCH_ASSOC);
} else {
    exit('No course ID specified!');
}
?>

            <div class="headings d-flex justify-content-between align-items-center mb-3">
                <h5 style="margin:30px"> <?=$comments_info['total_comments']?> comments</h5>
                
                        
                   
            </div>
    

   <a href="#" class="write_comment_btn"style="margin:30px" data-comment-id="-1" >Write Comment</a>
<?=show_write_comment_form()?>

<?=show_comments($comments)?>