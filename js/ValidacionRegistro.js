//Aquí va ir el ingreso adecuado de los datos
function validarRegistro (formulario) {
	// primero, a obtener todo
	var nombre = formulario.nombre.value
	var appat = formulario.appat.value
	var apmat = formulario.apmat.value
	var fechaNac = formulario.fechaNac.value
	var nombreUser = formulario.nombreUsuario.value
	var contraseña = formulario.contraseña.value
	var contraseña_verificar = formulario.contraseña_verificar.valu
	var correo = formulario.correo.value
	//Ver que no esten vacios:
	var patronCadenasEspacio= /[A-Za-z,\n]/
	if(!patronCadenasEspacio.test(nombre)){
		alert("Debe llenar adecuadamente el campo de Nombre")
		formulario.nombre.focus()
		return false
	}
	var patronCadenasSolas= /[A-Za-z]/
	if(!patronCadenasSolas.test(appat)){
		alert("Debe llenar adecuadamente el campo de Apellido paterno")
		formulario.appat.focus()
		return false
	}
	if(!patronCadenasSolas.test(apmat)){
		alert("Debe llenar adecuadamente el campo de Apellido materno")
		formulario.apmat.focus()
		return false
	}
	//El de la fecha aun no, espera
	//Primero, ver que sea una fecha
	var patronfechaGuiones= /^\d{4}\-\d{1,2}\-\d{1,2}$/;
	if(!patronfechaGuiones.test(fechaNac) || fechaNac==''){
		alert("Ingreso de fecha incorrecto")
		formulario.fechaNac.focus()
		return false
	}
	//Ahora, vamos a ver si, por alguna razón, mete mamadas, aunque no me valuda nada, efe
	fechadiv= fechaNac.split("-")
	año=fechadiv[0]
	mes = fechadiv[1]
	día = fechadiv[2]
	alert(año + "/-/" + mes + "/-/"+ dia)
	var date = new date()
	if(año>date.getFullYear()){
		alert("Año invalido, ingresar de nuevo")
		formulario.fechaNac.focus()
		return false
	}else{
		alert(año + "Es valido?")
	}
	if( (dia>31 && ( mes==1 || mes ==3 || mes==5 || mes==5||mes==7 || mes==8 || mes==10 || mes==12) ) 
		|| (dia >30) && ( mes !=2 && !( mes==1 || mes ==3 || mes==5 || mes==5||mes==7 || mes==8 || mes==10 || mes==12) ) 
		|| (dia >28 && mes==2 && (año % 4 !=0) )
		|| (dia >29 && mes==2 && (año % 4 ==0))){
		alert("Fecha Invalida")
	formulario.fechaNac.focus()
		return false
	}
	var patronAfanumerico= /[A-Za-z0-9]{8,20}/
	if(!patronAfanumerico.test(nombreUser)||nombreUser.length>20 || nombreUser==''){
		alert("Debe llenar adecuadamente el campo de Usuario")
		formulario.nombreUsuario.focus()
		return false
	}
	if(!patronAfanumerico.test(contraseña)||contraseña.length>20 || contraseña==''){
		alert("Debe llenar adecuadamente el campo de contraseña")
		formulario.nombreUsuario.focus()
		return false
	}
	if(!patronAfanumerico.test(contraseña_verificar)||contraseña_verificar.length>20 || contraseña_verificar==''){
		alert("Debe llenar adecuadamente el campo de verificar contraseña")
		formulario.nombreUsuario.focus()
		return false
	}
	var patronCorreo= /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
	if(!patronCorreo.test(correo)){
		alert("Correo electronico invalido")
		formulario.correo.focus()
		return false
	}
	//Ya que estamos, que las contraseñas sean iguales
	if(contraseña!=contraseña_verificar){
		alert("Las contraseñas no coinciden")
		return false
	}
	var indice = document.registroUsuarios.tipoUser.selectedIndex;
	var tipoUser = document.registroUsuarios.tipoUser.options[indice].value
	if(tipoUser=="Sin_especificar"){
		alert("Debe ingresar un tipo de usuario")
		formulario.tipoUser.focus()
	}
	else if(tipoUser=="Psicologo"){
		var cedula = formulario.cedula.value
		var patron_cedulas = /[\d]/
		if(!patron_cedulas.test(cedula) && (decula.length>8)){
			alert("Cedula invalida, ingresar de nuevo")
			formulario.cedula.focus()
			return false
		}

	}
	//Aquí debería haver algo que valide a partir de la base de datos
	/*

	*/
	//Ahora, se supóne que ya está:
	alert("Se ha reigstrado su Usuario con exito")
	window.location="InicioSesion.html"

	return true
	//mover a otra página html
}

function verTipoUser () {
	// ver que ingreso usuario, para luego pedirle la cédula o no
	var indice = document.registroUsuarios.tipoUser.selectedIndex;
	var tipoUser = document.registroUsuarios.tipoUser.options[indice].value
	var cedulaOculta= document.getElementById('cedula_ocult_td')
	var inputOculto = document.getElementById('cedula_ocult_input')
	//if temporal para ver si funciona
	if(tipoUser=="Sin_especificar"){
		//alert("Debe ingresar un tipo de usuario")
		cedulaOculta.style.opacity=0;
		inputOculto.style.opacity=0;
	}
	else if(tipoUser=="Estudiante"){
		//alert("Selecciono tipo estudiante")
		cedulaOculta.style.opacity=0;
		inputOculto.style.opacity=0;
	}
	else if(tipoUser == "Psicologo"){
		//alert("Selecciono psicologo")
		cedulaOculta.style.opacity=1;
		inputOculto.style.opacity=1;
	}else {
		alert("Algo hice mal")
	}
	//alert(cedulaOculta.style.opacity)

}