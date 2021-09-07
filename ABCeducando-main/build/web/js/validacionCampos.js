
const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input')

const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
    nombre: /^([A-Z]{1}[a-zñáéíóú]+[\s]*)+$/,
    password: /^.{4,12}$/, // 4 a 12 digitos.
    correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    telefono: /^\d{7,14}$/ // 7 a 14 numeros.
}

const campos = {
    textnombres: false,
    textapellidos: false,
    texttipoid: false,
    eps: false,
    textnumeroid: false,
    texttelefono: false,
    textemail: false,
    textfechanacimiento: false
}

const validarFormulario = (e) => {
    switch (e.target.name) {
        case "textnombres":
            if (expresiones.nombre.test(e.target.value)) {
                document.getElementById('grupo__nombre').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__nombre').classList.add('form-group-correcto');
                document.querySelector('#grupo__nombre .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__nombre').classList.add('form-group-incorrecto');
                document.getElementById('grupo__nombre').classList.remove('form-group-correcto');
                document.querySelector('#grupo__nombre .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "textapellidos":
            if (expresiones.nombre.test(e.target.value)) {
                document.getElementById('grupo__apellido').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__apellido').classList.add('form-group-correcto');
                document.querySelector('#grupo__apellido .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__apellido').classList.add('form-group-incorrecto');
                document.getElementById('grupo__apellido').classList.remove('form-group-correcto');
                document.querySelector('#grupo__apellido .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "texttipoid":
            if (expresiones.nombre.test(e.target.value)) {
                document.getElementById('grupo__tipoid').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__tipoid').classList.add('form-group-correcto');
                document.querySelector('#grupo__tipoid .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__tipoid').classList.add('form-group-incorrecto');
                document.getElementById('grupo__tipoid').classList.remove('form-group-correcto');
                document.querySelector('#grupo__tipoid .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "eps":
            if (expresiones.nombre.test(e.target.value)) {
                document.getElementById('grupo__eps').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__eps').classList.add('form-group-correcto');
                document.querySelector('#grupo__eps .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__eps').classList.add('form-group-incorrecto');
                document.getElementById('grupo__eps').classList.remove('form-group-correcto');
                document.querySelector('#grupo__eps .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "textnumeroid":
            if (expresiones.password.test(e.target.value)) {
                document.getElementById('grupo__numero').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__numero').classList.add('form-group-correcto');
                document.querySelector('#grupo__numero .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__numero').classList.add('form-group-incorrecto');
                document.getElementById('grupo__numero').classList.remove('form-group-correcto');
                document.querySelector('#grupo__numero .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "texttelefono":
            if (expresiones.telefono.test(e.target.value)) {
                document.getElementById('grupo__telefono').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__telefono').classList.add('form-group-correcto');
                document.querySelector('#grupo__telefono .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__telefono').classList.add('form-group-incorrecto');
                document.getElementById('grupo__telefono').classList.remove('form-group-correcto');
                document.querySelector('#grupo__telefono .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "textemail":
            if (expresiones.password.test(e.target.value)) {
                document.getElementById('grupo__correo').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__correo').classList.add('form-group-correcto');
                document.querySelector('#grupo__correo .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__correo').classList.add('form-group-incorrecto');
                document.getElementById('grupo__correo').classList.remove('form-group-correcto');
                document.querySelector('#grupo__correo .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;
        case "textfechanacimiento":
            if (expresiones.password.test(e.target.value)) {
                document.getElementById('grupo__fecha').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__fecha').classList.add('form-group-correcto');
                document.querySelector('#grupo__fecha .formulario__input-error').classList.remove('formulario__input-error-activo')


            } else {
                document.getElementById('grupo__fecha').classList.add('form-group-incorrecto');
                document.getElementById('grupo__fecha').classList.remove('form-group-correcto');
                document.querySelector('#grupo__fecha .formulario__input-error').classList.add('formulario__input-error-activo')
            }
            break;        
    }
}

const validarCampo = (expresion, input, campo) => {
    if (expresion.nombre.test(input.value)) {
        document.getElementById(`grupo__${campo}`).classList.remove('form-group-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('form-group-correcto');
        document.querySelector(`#grupo__nombre .formulario__input-error`).classList.remove('formulario__input-error-activo')


    } else {
        document.getElementById(`grupo__${campo}`).classList.add('form-group-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('form-group-correcto');
        document.querySelector(`#grupo__nombre .formulario__input-error`).classList.add('formulario__input-error-activo')
    }
}

inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);
});
formulario.addEventListener('submit', (e) => {
    if (textnombres && textapellidos && texttipoid && eps && textnumeroid && texttelefono && textemail && textfechanacimiento){
        
    }
});

