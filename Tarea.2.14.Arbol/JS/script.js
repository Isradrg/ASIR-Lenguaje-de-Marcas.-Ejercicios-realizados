		function crea_arbol()
		{
			/*var numaster = document.getElementById("num").value;*/
			var altura = document.getElementById("altura").value;
			var resultado ="<table border='1'>";
			var numarbol = document.getElementById("numarbol").value;

			for (var o = 1; o <= numarbol; o++) 
			{
				for (var i=1; i <= altura; i++) 
			{
				resultado += "<tr>";
				//Este bucle recorre los espacios en blanco previos en cada línea
				for (var k=1; k <= altura-i; k++) 
				{
					resultado += "<td>&nbsp;</td>";
				}
				//Este bucle pone los * correspondientes en cada línea
				for(var j=1; j <= 2*i-1; j++) 
				{ 
					resultado += "<td>*</td>"; 
				}
				//Este bucle recorre los espacios en blanco posterioes en cada línea
				for (var k=1; k <= altura-i; k++) 
				{
					resultado += "<td>&nbsp;</td>";
				}
				//Cerramos la línea
				resultado +="</tr>";
			}
			
			}

			/*
			if (numaster == null || numaster < 1 || isNaN(numaster) ) {
				alert("Num *: Solo son válidos números mayores que 1");
				return;
			}*/
			if (altura == null || altura < 1 || isNaN(altura) ) 
			{
				alert("Num lineas: Solo son válidos números mayores que 1");
				return;
			}

			if (numarbol == null || numarbol < 1 || isNaN(numarbol) ) 
			{
				alert("Num arbol: Solo son válidos números mayores que 1");
				return;
			}
			//El primer bucle recorrerá las líneas
			
			//Cerramos la tabla
			resultado += "</table>";
			document.getElementById("linea").innerHTML = resultado;
		}