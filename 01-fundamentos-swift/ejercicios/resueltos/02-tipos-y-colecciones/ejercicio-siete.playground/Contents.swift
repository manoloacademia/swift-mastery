import Cocoa

// Ejercicio 7: Tuples y retorno de funciones

// 1. Función que calcula estadísticas de un array de números
func calcularEstadisticas(_ numeros: [Double]) -> (minimo: Double, maximo: Double, promedio: Double) {
    let min = numeros.min() ?? 0.0
    let max = numeros.max() ?? 0.0
    let avg = numeros.reduce(0.0, +) / Double(numeros.count)

    return (min, max, avg)
}

let datos = [45.5, 67.8, 23.1, 89.0, 56.3, 34.7]
let stats = calcularEstadisticas(datos)

print("Mínimo: \(stats.minimo)")
print("Máximo: \(stats.maximo)")
print("Promedio: \(String(format: "%.2f", stats.promedio))")


// 2. Función que parsea un código HTTP
func analizarRespuestaHTTP(_ codigo: Int) -> (tipo: String, descripcion: String, esExito: Bool) {
    let tipo: String
    let descripcion: String
    let exito: Bool

    switch codigo {
    case 200...299:
        tipo = "Éxito"
        descripcion = "La solicitud fue exitosa"
        exito = true
    case 400...499:
        tipo = "Error del cliente"
        descripcion = "Error en la solicitud del cliente"
        exito = false
    case 500...599:
        tipo = "Error del servidor"
        descripcion = "Error en el servidor"
        exito = false
    default:
        tipo = "Desconocido"
        descripcion = "Código HTTP no reconocido"
        exito = false
    }

    return (tipo, descripcion, exito)
}

let respuesta = analizarRespuestaHTTP(404)
print("\nCódigo HTTP:")
print("Tipo: \(respuesta.tipo)")
print("Descripción: \(respuesta.descripcion)")
print("¿Es exitoso?: \(respuesta.esExito)")


// 3. Descomponer una tuple
let coordenada = (latitud: 40.4168, longitud: -3.7038, ciudad: "Madrid")

// Descomposición completa
let (lat, lon, ciudad) = coordenada
print("\nCiudad: \(ciudad) está en (\(lat), \(lon))")

// Descomposición parcial (ignorando ciudad con _)
let (latitud, longitud, _) = coordenada
print("Coordenadas: \(latitud), \(longitud)")
