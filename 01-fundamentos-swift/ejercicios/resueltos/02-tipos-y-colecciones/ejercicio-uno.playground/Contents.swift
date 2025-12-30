import Cocoa

// Ejercicio 1: Creación básica de Arrays

// 1. Crea un array de strings con 5 productos para comprar
let arrayStrings: [String] = ["Casa", "Auto", "Mochila", "Ropa", "Libro"]
// 2. Crea un array de precios (Double) correspondientes
let precios: [Double] = [3.12, 2.08, 15.00, 10.00, 1.50]
// 3. Imprime cuántos productos hay en total
print("En total hay \(arrayStrings.count) productos")
// 4. Imprime el primer y último producto
print("El primero producto es: \(arrayStrings.first ?? "No hay productos") y el útlimo producto es: \(arrayStrings.last ?? "No hay productos")")
// 5. Accede al precio del tercer producto
let tercerProducto = precios[2]
