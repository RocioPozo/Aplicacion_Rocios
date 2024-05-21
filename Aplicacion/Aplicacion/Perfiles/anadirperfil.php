<?php
require_once("config.php");
$url = 'http://localhost:8080/exist/rest/db/Aplicacion/anadirperfil.xq';
$id = $_POST['id'];
$nombre = $_POST['nombre'];

$auth     = base64_encode( USERNAME.":".PASSWORD );

$data = "<perfil id='$id' nombre='$nombre'/>";
$options = [
    'http' => [
        'header' => ['Authorization: Basic ' . $auth, 'Content-type: application/xml\r\n'],
        'method' => 'POST',
        'content' => $data,
    ],
];

$context = stream_context_create($options);
$result = file_get_contents($url, false, $context);
if ($result === false) {
   echo "Error"; 
}
else
{

?>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Agenda</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="mt-4 p-5 bg-primary text-white rounded">
  <h1>Perfil Insertado</h1>
<a href="index.php" class="btn btn-success btn-lg" role="button" >Volver</a>
</div>
</body>
</html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<?php
}   
?>

