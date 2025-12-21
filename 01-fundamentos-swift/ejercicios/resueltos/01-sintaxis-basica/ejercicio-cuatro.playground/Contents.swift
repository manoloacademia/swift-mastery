import Cocoa
let cantidadProductos: Int = 3
let precioUnitario: Double = 29.99
let descuento: Int = 10  // porcentaje

// 1. Calcula el subtotal (cantidad * precio)
// PROBLEMA: No puedes multiplicar Int * Double directamente
// let subtotal = cantidadProductos * precioUnitario  // ❌ Error

// Tu código para calcular subtotal:
let subtotal = Double(cantidadProductos) * precioUnitario

// 2. Calcula el descuento en dólares
// PROBLEMA: descuento es Int, necesitas convertir para operar con subtotal
let descuentoEnDolares = subtotal * Double(descuento) / 100

// 3. Calcula el total final
let totalFinal = subtotal - descuentoEnDolares

// 4. Imprime el resultado formateado
// Debe mostrar: "Total: $XX.XX (ahorraste $Y.YY)"
print("Total: $\(totalFinal) (ahorraste $\(descuentoEnDolares))")
