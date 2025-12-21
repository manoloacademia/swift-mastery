import Cocoa

// Ejercicio 6: Dictionaries básicos

// 1. Crea un diccionario de inventario: [Producto: Cantidad]
var inventario: [String: Int] = [
    "Laptops": 15,
    "Teclados": 45,
    "Ratones": 60,
    "Monitores": 20
]

// 2. Imprime cuántos teclados hay
print("Teclados en stock: \(inventario["Teclados"] ?? 0)")

// 3. Agrega un nuevo producto: "Webcams" con 30 unidades
inventario["Webcams"] = 30

// 4. Actualiza la cantidad de monitores a 18
inventario["Monitores"] = 18

// 5. Vende 10 laptops (reduce el inventario)
inventario["Laptops", default: 0] -= 10

// 6. Intenta acceder a un producto que no existe
let audifonos = inventario["Audífonos"]
print("Audífonos: \(audifonos ?? nil)")

// 7. Accede a "Audífonos" con un valor por defecto de 0
let audifonosStock = inventario["Audífonos", default: 0]
print("Audífonos en stock (con default): \(audifonosStock)")

// 8. Elimina "Ratones" del inventario
inventario["Ratones"] = nil

// 9. Imprime el inventario final
print("\n=== INVENTARIO FINAL ===")
for (producto, cantidad) in inventario.sorted(by: { $0.key < $1.key }) {
    print("\(producto): \(cantidad) unidades")
}

// 10. Imprime cuántos tipos de productos diferentes hay
print("\nTipos de productos: \(inventario.count)")
