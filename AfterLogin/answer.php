<?php
  include("users.php");
  $ans=new  users;
  $answer=$ans->answer($_POST);
?>

<!DOCTYPE HTML>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <title>Answer</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    
  </head>
  <body>
    <center>
      <?php
        $total_qus=$answer['right']+$answer['wrong']+$answer['no_answer'];
        $attempt_qus=$answer['right']+$answer['wrong'];
      ?>

      <div class="container" style="font-family: 'Montserrat', sans-serif; padding: 4% 2%">
        <div class="col-sm-3"></div>

        <div class="col-sm-6">
        <h2>Your Quiz results</h2>
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>Total number of Questions</th>
                <th><?php echo $total_qus; ?></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Attempted qusetions</td>
                <td><?php echo $attempt_qus;?></td>
              </tr>
              <tr>
                <td>Right answer </td>
                <td><?php echo $answer['right'];?></td>
              </tr>
              <tr>
                <td>Wrong answer</td>
                <td><?php echo $answer['wrong'];?></td>
              </tr>
              <tr>
                <td>No answer</td>
                <td><?php echo $answer['no_answer'];?></td>
              </tr>
              <tr>
                <td>Your result</td>
                <td>
                  <?php 
                  $per=($answer['right']*100)/($total_qus);
                  echo $per."%";
                  ?>
                </td>
              </tr>
            </tbody>
          </table>

          <a href="home2.php" style="text-decoration: none; color: #00587a; padding: 2% 10%">back to home</a>
          <a href="quizes.php" style="text-decoration: none; color: #00587a; padding: 2% 10%">back to quizes</a>
        </div>

        <div class="col-sm-3"></div>
      </div>
    </center>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
  </body>
</html>