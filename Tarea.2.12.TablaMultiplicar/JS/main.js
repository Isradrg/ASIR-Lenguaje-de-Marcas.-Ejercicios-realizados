function generate(){
  var maxvalue = document.getElementById("maxvalue").value;
  var resultados = document.getElementById("tonum").value;
  var colrow = document.getElementById("mulnum").value;
  var maxrows = temporal = maxvalue;
  var temporal2 = 0;
  var maxcolumnas;

  if(maxvalue == 0){
    document.getElementById("tablasMultiplicar").style.display = ("none");
    return;
  }
  else{
    document.getElementById("tablasMultiplicar").style.display = ("block");
  }

  document.getElementById("tablasMultiplicar").innerHTML = ("<table id='tablascont'><tbody id='tcont'></tbody></table>")

  for(i=0;(maxvalue%5)!=0;i++){
    maxvalue++;
  }

  maxrows = maxvalue/5;
  maxcolumnas = colrow;

  /*Generar maxrows Filas*/
  for(i=0; i != maxrows; i++){
    document.getElementById("tcont").innerHTML += ("<tr id=row"+i+" class=center>");
    
    /*Genera una celda/tabla hasta completar cupo*/
    for(j=0; j != maxcolumnas; j++){
      if(temporal!=0){
        document.getElementById("row"+i).innerHTML += ("<td class=usada><table id=table"+temporal2+"></td>");
        document.getElementById("table"+temporal2).innerHTML += ("<tr id=contenido"+temporal2+"><td id=titulo"+temporal2+"><td id=multiplos"+temporal2+"><h3>Tabla del "+(temporal2+1)+"</h3></td></tr>");

        for(h=0; h<resultados; h++){
          document.getElementById("multiplos"+temporal2).innerHTML += ("<p>"+(temporal2+1)+"x"+h+"="+h*(temporal2+1)+"</p>");
        }
        temporal2++;
        temporal--;
      }
      else{
        document.getElementById("row"+i).innerHTML += ("<td class=vacia>&nbsp;</td>");
      }
    }
  }
}

function bucle() 
{
  var texto = document.getElementById("texto").value;
  var parrafo = document.getElementById("vacio");
  
  if (texto == null || isNaN(texto) || /^\s+$/.test(texto))
  {
    alert("Debe introducir un número");
  }

  for (let i = 0; i <= texto; i++) 
  {
    parrafo.innerHTML = parrafo.innerHTML + "<br>" + i;
  }
}

function rellena_texto() 
{
  var texto = document.getElementById("texto").value;
  var parrafo = document.getElementById("vacio");
  parrafo.innerHTML = texto;
}