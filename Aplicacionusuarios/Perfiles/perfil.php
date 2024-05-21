<?php

$nombre=$_GET['nombre'];

require_once("config.php");
$contents = REST_PATH . "/db/Aplicacion/perfil.xq?nombre=$nombre";
$result = file_get_contents($contents);

// Load the XML source
$xml = new DOMDocument;
$xml->loadXML($result);

$xsl = new DOMDocument;
$xsl->load('perfiles.xsl');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);
?>
