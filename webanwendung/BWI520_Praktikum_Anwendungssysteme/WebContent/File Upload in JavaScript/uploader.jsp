
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>File Upload </title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="../css/Navigation.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>

<body class="main">
  <jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
  <jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
  <jsp:useBean id="htmlexprexion" class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />


  <jsp:getProperty property="navigation" name="htmlexprexion" />
  <center>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="wrapper">
      <header>Laden sie eine Datei Hoch</header>
      <form action="./uploadennnn.jsp" enctype="multipart/form-data" method="post">
        <input class="file-input" type="file" name="file" hidden="qwert">
        <i class="fas fa-cloud-upload-alt"></i>
        <p>Wählen Sie eine Datei aus</p>
      
      <section class="progress-area"></section>
      <section class="uploaded-area"></section>
      <button type="submit"> Upload</button>
      </form>
    </div>

    <script src="./script.js"></script>

  </center>
 

</body>

</html>