let $correo := request:get-parameter("correo", "notengo@gmail.com")
let $c := doc("aplicacion.xml")//usuario[@correo = $correo]
return $c


