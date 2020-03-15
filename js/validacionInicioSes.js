function iniciarSesion() {
	// body...
	var nombreUser = document.iniciarSes.usuario.value
	var contraseña = document.iniciarSes.contraseña.value

	var patronAfanumerico= /[A-Za-z0-9]{8,20}/
	if(!patronAfanumerico.test(nombreUser)||nombreUser.length>20 || nombreUser==''){
		alert("Debe llenar adecuadamente el campo de Usuario")
		document.iniciarSes.usuario.focus()
		return 
	}
	if(!patronAfanumerico.test(contraseña)||contraseña.length>20 || contraseña==''){
		alert("Debe llenar adecuadamente el campo de contraseña")
		document.iniciarSes.contraseña.focus()
		return 
	}
	//Vaidacion de que existe el usuario, pero por el momento no existe
	alert("Por el momento, el ingreso fue valido, metete")
	window.location="index.html"
}