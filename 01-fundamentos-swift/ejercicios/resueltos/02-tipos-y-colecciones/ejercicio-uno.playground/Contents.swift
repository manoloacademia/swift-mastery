import Cocoa

// Ejercicio 1: Creación básica de Arrays

// 1. Crea un array de strings con 5 productos para comprar
let productos: [String] = ["Leche", "Pan", "Huevos", "Manzanas", "Yogur"]

// 2. Crea un array de precios (Double) correspondientes
var precios: [Double] = [2.50, 1.20, 3.50, 4.00, 2.80]

// 3. Imprime cuántos productos hay en total
print("Total de productos: \(productos.count)")

// 4. Imprime el primer y último producto
print("Primer producto: \(productos.first ?? "N/A")")
print("Último producto: \(productos.last ?? "N/A")")

// 5. Accede al precio del tercer producto
print("Precio del producto 3: $\(precios[2])")
