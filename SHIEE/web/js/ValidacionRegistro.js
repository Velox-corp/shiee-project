//Aquí va ir el ingreso adecuado de los datos
//como se va a mandar a java, cada validacion va a ser una función diferente
function estaVacio (element) {
	var ingreso = element.value
	var nombreElement= element.name
	var patronCadenasEspacio= /[A-Za-z,\n]/
	if(!patronCadenasEspacio.test(ingreso)){
		alert("Debe llenar adecuadamente el campo:" +nombreElement)
		element.focus()
		return false
	}
}
function validarFecha(element){
	let fechaNac = element.value
	//Primero, ver que sea una fecha
	var patronfechaGuiones= /^\d{4}\-\d{1,2}\-\d{1,2}$/;
	if(!patronfechaGuiones.test(fechaNac) || fechaNac==''){
		alert("Ingreso de fecha incorrecto")
		element.focus()
		return false
	}
	//Ahora, vamos a ver si, por alguna razón
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
	element.focus()
		return false
	}
}
//Un patrón global para ver que pex
var patronAfanumerico= /[A-Za-z0-9]{8,20}/
function validarUser(element){
	nombreUser = element.value
	if(!patronAfanumerico.test(nombreUser)||nombreUser.length>20 || nombreUser==''){
		alert("Debe llenar adecuadamente el campo de Usuario")
		element.focus()
		return false
	}
}
function validarCont(element){
	var contraseña = element.value
	if(!patronAfanumerico.test(contraseña)||contraseña.length>20 || contraseña==''){
		alert("Debe llenar adecuadamente el campo de contraseña")
		element.focus()
		return false
	}
}
function validarContVeri(element){
	var contraseña_verificar = element.value;
	if(!patronAfanumerico.test(contraseña_verificar)||contraseña_verificar.length>20 || contraseña_verificar==''){
		alert("Debe llenar adecuadamente el campo de verificar contraseña");
		element.focus();
		return false;
	}
}
function validarCorreo(element){
	var correo = element.value;
	var patronCorreo= /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
	if(!patronCorreo.test(correo)){
		alert("Correo electronico invalido");
		element.focus();
		return false;
	}
}

function verificarCedula(element){
		var cedula = element.value;
		var patron_cedulas = /[\d]/
		if(!patron_cedulas.test(cedula) && (cedula.length>8)){
			alert("Cedula invalida, ingresar de nuevo");
			element.focus();
			return false;
		}

}

function verTipoUser () {
	// ver que ingreso usuario, para luego pedirle la cédula o no
	var indice = document.registroUsuarios.tipoUser.selectedIndex;
	var tipoUser = document.registroUsuarios.tipoUser.options[indice].value;
	var cedulaOculta= document.getElementById('cedula_ocult_td');
	var inputOculto = document.getElementById('cedula_ocult_input');
	//if temporal para ver si funciona
	if(tipoUser==="Sin_especificar"){
		alert("Debe ingresar un tipo de usuario");
		cedulaOculta.style.opacity=0;
		inputOculto.style.opacity=0;
	}
	else if(tipoUser==="Estudiante"){
		//alert("Selecciono tipo estudiante")
		cedulaOculta.style.opacity=0;
		inputOculto.style.opacity=0;
	}
	else if(tipoUser === "Psicologo"){
		//alert("Selecciono psicologo")
		cedulaOculta.style.opacity=1;
		inputOculto.style.opacity=1;
	}else {
		alert("Algo hice mal");
	}
	//alert(cedulaOculta.style.opacity)

}

function activarCampo(nombreCampo){
    var campoActivar = document.getElementsById(nombreCampo);
    try{
        campoActivar.removeAttibute("readonly");
        
    }catch (exception) {
        console.log("No exsite");
        campoActivar.setAttibute("readonly");
        campoActivar.readonly = "readonly";
    } finally {
        return true;
    }

    
}