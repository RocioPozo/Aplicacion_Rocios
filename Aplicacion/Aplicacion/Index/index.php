<?php
require_once("config.php");

if (isset($_GET['correo'])){
  $correo=$_GET['correo'];
  $contents = REST_PATH . "/db/Aplicacion/borrar.xq?correo=$correo";
 
  $auth     = base64_encode( USERNAME.":".PASSWORD );
  $options = [
    'http' => [
        'header' => ['Authorization: Basic ' . $auth, 'Content-type: application/xml\r\n'],
        'method' => 'GET',
    ],
   ];

   $context = stream_context_create($options);
   $result = file_get_contents($contents, false, $context);

}

$contents = REST_PATH . "/db/Aplicacion/listado.xq";
$result = file_get_contents($contents);


// Load the XML source
$xml = new DOMDocument;
$xml->loadXML($result);

$xsl = new DOMDocument;
$xsl->load('index.xsl');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

?>
