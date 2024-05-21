<aplicacion>
{
  for $usuario in doc("aplicacion.xml")//usuarios/usuario
  let $perfil := doc("aplicacion.xml")//perfiles/perfil[@id = $usuario/@perfil]/@nombre
  return
    <resultado>
      <perfil>{$perfil}</perfil>
      <nombre>{$usuario/@nombre}</nombre>
      <telefono>{$usuario/@tlf}</telefono>
      <edad>{$usuario/@edad}</edad>
      <correo>{encode-for-uri($usuario/@correo)}</correo>
    </resultado>
}
</aplicacion>


