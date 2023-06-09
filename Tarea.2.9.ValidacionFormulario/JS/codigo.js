function validaFormulario() 
{
  var campo_nombre = document.getElementById("nombre").value;
  var campo_apellidos= document.getElementById("apellidos").value;
  var campo_fecnac= document.getElementById("fecnac").value;
  var textarea_direccion= document.getElementById("direccion").value;
  var lista = document.getElementById("aficiones").value;
  var checkbox = document.getElementById("estudios").children;

  if (campo_nombre == null || campo_nombre.length == 0 || /^\s+$/.test(campo_nombre)) 
  {
    alert("El campo Nombre es obligatorio");
    return;
  }
  else if (campo_apellidos == null || campo_apellidos.length == 0 || /^\s+$/.test(campo_apellidos))
  {
    alert("El campo Apellidos es obligatorio");
    return;
  }
  else if (campo_fecnac == null || campo_fecnac.length == 0 || /^\s+$/.test(campo_fecnac))
  {
    alert("Debe indicar su fecha de nacimiento");
    return;
  }
  else if (textarea_direccion.length == 0)
  {
    alert("Debe rellenar el campo de texto con su dirección.");
    return;
  }
  else if (!document.querySelector('input[name="genero"]:checked')) 
  {
        alert('Debe seleccionar un género.');
       return;
      }
  else if ( lista == null || lista == 0 ) 
  {
    alert("Debe seleccionar una opción en el desplegable de aficiones.");
    return;
  }
  for (var i = 0; i < estudios.childElementCount; i++) {
          if (estudios.children[i].type == "checkbox" && estudios.children[i].checked==false)
              
      alert("Debes seleccionar al menos unos estudios realizados");
      return;
  }
    
}