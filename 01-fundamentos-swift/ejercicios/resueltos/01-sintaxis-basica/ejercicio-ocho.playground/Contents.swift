import Cocoa
let nombre = "  juan carlos  "
let apellido = "García López"
let apodo = "juanca"

// 1. Limpia el nombre (quita espacios al inicio y final)
//    Pista: Busca el método que remueve whitespace
let nombreLimpio = "\(nombre.trimmingCharacters(in: .whitespaces))"  // Tu código


// 2. Capitaliza correctamente (primera letra mayúscula de cada palabra)
let nombreCapitalizado = "\(nombreLimpio.capitalized)"  // Tu código


// 3. Crea las iniciales (primera letra del nombre + primera del apellido)
//    Resultado esperado: "JG"
let iniciales = "\(nombreCapitalizado.first, default: "sin nombre")\(apellido.first, default: "sin apellido")"  // Tu código


// 4. Crea el nombre de usuario sugerido:
//    primeras 3 letras del nombre + primeras 3 del apellido, todo en minúsculas
//    Resultado esperado: "juagar"
let usuarioSugerido = "\(nombreLimpio.prefix(3))\(apellido.lowercased().prefix(3))"  // Tu código


// 5. Crea el nombre formal:
//    "Sr./Sra. [Apellido], [Nombre]"
//    Resultado esperado: "Sr./Sra. García López, Juan Carlos"
let nombreFormal = "Sr./Sra. \(apellido), \(nombreCapitalizado)"  // Tu código


// 6. Verifica si el apodo está contenido en el nombre
let apodoEnNombre = nombreLimpio.contains(apodo) ? true : false  // Tu código


print("Nombre limpio: '\(nombreLimpio)'")
print("Capitalizado: '\(nombreCapitalizado)'")
print("Iniciales: \(iniciales)")
print("Usuario sugerido: \(usuarioSugerido)")
print("Nombre formal: \(nombreFormal)")
print("¿Apodo en nombre?: \(apodoEnNombre)")
