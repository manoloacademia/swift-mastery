import Cocoa
let nombreUsuario = "María"
let edad = 28
let ciudad = "Madrid"
let esNuevoUsuario = true
let diasDesdeRegistro = 0

// 1. Crea un saludo que diga:
// "¡Hola, María! Bienvenida desde Madrid."
// (usa "Bienvenido" o "Bienvenida" - por ahora puedes asumir femenino)
let saludo = "¡Hola, \(nombreUsuario)! Bienvenida desde \(ciudad)."  // Tu código aquí


// 2. Crea un mensaje que incluya una expresión calculada:
// "El próximo año tendrás 29 años."
let mensajeEdad = "El próximo año tendrás \(edad + 1) años."  // Tu código aquí


// 3. Crea un mensaje condicional (sin usar if todavía):
// Si es nuevo usuario: "¡Gracias por unirte! Llevas 0 días con nosotros."
// Pista: Usa el operador ternario (condicion ? valorSiTrue : valorSiFalse)
let mensajeBienvenida = esNuevoUsuario ? "Gracias por unirte! Llevas \(diasDesdeRegistro) días con nosotros." : "No eres un usuario nuevo."  // Tu código aquí


// 4. Crea un mensaje con texto en mayúsculas:
// "Usuario: MARÍA - Ciudad: MADRID"
let mensajeFormateado = "Usuario: \(nombreUsuario.uppercased()) - Ciudad: \(ciudad.uppercased())"  // Tu código aquí


// Imprime todos los mensajes
print(saludo)
print(mensajeEdad)
print(mensajeBienvenida)
print(mensajeFormateado)
