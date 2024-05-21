let $nombre := request:get-parameter("nombre", "nonombre")
let $c := doc("aplicacion.xml")//perfil[@nombre = $nombre]
return $c 

