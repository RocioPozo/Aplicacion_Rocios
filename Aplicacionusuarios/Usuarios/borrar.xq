xquery version "3.1";

let $correo := request:get-parameter("correo", "notengo@gmail.com")
return
    update delete doc("aplicacion.xml")//usuario[@correo = $correo]

