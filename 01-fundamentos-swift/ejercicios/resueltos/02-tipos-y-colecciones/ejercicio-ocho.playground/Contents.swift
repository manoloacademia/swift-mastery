import Cocoa

// Ejercicio 8: Higher-Order Functions (map, filter, reduce)

// Array de edades de usuarios
let edades = [15, 28, 17, 34, 19, 42, 16, 25, 30, 18]

// 1. Filtra solo los usuarios mayores de edad (>= 18)
let mayoresDeEdad = edades.filter { $0 >= 18 }

// 2. Convierte las edades a strings con formato "X años"
let edadesFormateadas = edades.map { "\($0) años" }

// 3. Calcula la suma de todas las edades
let sumaEdades = edades.reduce(0, +)

// 4. Encuentra el promedio de edad
let promedioEdad = Double(edades.reduce(0, +)) / Double(edades.count)

// Imprime resultados
print("Mayores de edad: \(mayoresDeEdad)")
print("Edades formateadas: \(edadesFormateadas)")
print("Suma total: \(sumaEdades)")
print("Promedio: \(String(format: "%.2f", promedioEdad))")

// 5. DESAFÍO: Encadenamiento
// Filtra mayores de edad, duplica sus edades, y suma el resultado
let sumaDuplicados = edades
    .filter { $0 >= 18 }
    .map { $0 * 2 }
    .reduce(0, +)

print("Suma de edades duplicadas (solo mayores): \(sumaDuplicados)")

// 6. Operaciones con Dictionaries
let precios = ["iPhone": 999, "iPad": 799, "AirPods": 249, "Watch": 399]

// Aplica 21% de IVA a todos los precios (usa mapValues)
let preciosConIVA = precios.mapValues { Double($0) * 1.21 }

// Filtra solo productos que cuestan más de 300
let productosCaros = precios.filter { $0.value > 300 }

print("\nPrecios con IVA: \(preciosConIVA)")
print("Productos > $300: \(productosCaros)")
