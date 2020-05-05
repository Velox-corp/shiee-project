
	// body...
var patronAfanumerico= /[A-Za-z0-9]{8,20}/
function validarUser(element){
	var nombreUser = element.value
	if(!patronAfanumerico.test(nombreUser)||nombreUser.length>20 || nombreUser==''){
		alert("Debe llenar adecuadamente el campo de Usuario")
		document.iniciarSes.usuario.focus()
		return 
	}
}
function validarPass(element) {
	var contraseña = element.value
	if(!patronAfanumerico.test(contraseña)||contraseña.length>20 || contraseña==''){
		alert("Debe llenar adecuadamente el campo de contraseña")
		document.iniciarSes.contraseña.focus()
		return 
	}
	
}