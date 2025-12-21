import Cocoa
// Datos del formulario
let edad = 17
let tieneEmail = true
let aceptoTerminos = true
let password = "abc123"
let longitudMinPassword = 8

// 1. Verifica si el usuario es mayor de edad (>= 18)
let esMayorDeEdad = edad >= 18 ? true : false  // Tu código aquí


// 2. Verifica si el password tiene longitud suficiente
let passwordValido = password.count == longitudMinPassword ? true : false  // Tu código aquí


// 3. Verifica si el formulario está completo (tiene email Y acepto términos)
let formularioCompleto = tieneEmail && aceptoTerminos ? true : false  // Tu código aquí


// 4. Verifica si puede registrarse:
//    (es mayor de edad Y password válido Y formulario completo)
//    O
//    (tiene email Y tiene autorización parental - simula con: edad >= 16)
let puedeRegistrarse = (esMayorDeEdad && passwordValido && formularioCompleto) || (tieneEmail && edad >= 16) ? true : false  // Tu código aquí


// 5. Imprime un resumen
print("Mayor de edad: \(esMayorDeEdad)")
print("Password válido: \(passwordValido)")
print("Formulario completo: \(formularioCompleto)")
print("¿Puede registrarse?: \(puedeRegistrarse)")

// Con los datos dados, ¿cuál debería ser el resultado de puedeRegistrarse?
// Analiza paso a paso antes de ejecutar.
// true
