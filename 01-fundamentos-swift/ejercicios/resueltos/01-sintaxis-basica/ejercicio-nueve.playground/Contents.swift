import Cocoa
// Precios del menú
let precioCafeChico: Double = 2.50
let precioCafeMediano: Double = 3.50
let precioCafeGrande: Double = 4.50
let precioExtraShot: Double = 0.75
let precioLeche: Double = 0.50

// Pedido del cliente
let cantidadChicos: Int = 2
let cantidadMediansos: Int = 1
let cantidadGrandes: Int = 0
let extraShotsTotal: Int = 3
let agregosLeche: Int = 2
let propinaPorcentaje: Int = 15
let nombreCliente = "carlos"

// ======= TU CÓDIGO AQUÍ =======

// 1. Calcula el subtotal de cafés
let subtotalCafes = (Double(cantidadChicos) * precioCafeChico) + (Double(cantidadMediansos) * precioCafeMediano) + (Double(cantidadGrandes) * precioCafeGrande)

// 2. Calcula el costo de extras
let subtotalExtras = (Double(extraShotsTotal) * precioExtraShot) + (Double(agregosLeche) * precioLeche)

// 3. Calcula el subtotal general (cafés + extras)
let subtotal = subtotalCafes + subtotalExtras

// 4. Calcula la propina
let propina = subtotal * Double(propinaPorcentaje) / 100

// 5. Calcula el total final
let total = subtotal + propina

// 6. Calcula cuántos items se ordenaron en total
let items = cantidadChicos + cantidadGrandes + cantidadMediansos + extraShotsTotal + agregosLeche

// 7. Genera el recibo formateado:
/*
   Debería verse así:
   
   ================================
   CAFÉ SWIFT ☕
   ================================
   Cliente: Carlos
   
   Cafés Chicos (2)     $5.00
   Cafés Medianos (1)   $3.50
   Shots Extra (3)      $2.25
   Leche (2)            $1.00
   --------------------------------
   Subtotal:            $11.75
   Propina (15%):       $1.76
   --------------------------------
   TOTAL:               $13.51
   ================================
   ¡Gracias por tu visita!
   Items ordenados: 8
   ================================
*/

let recibo = """
   ================================
   CAFÉ SWIFT ☕
   ================================
   Cliente: \(nombreCliente.capitalized)
   
   Cafés Chicos (\(cantidadChicos))     $\(Double(cantidadChicos) * precioCafeChico)
   Cafés Medianos (\(cantidadMediansos))   $\(Double(cantidadMediansos) * precioCafeMediano)
   Shots Extra (\(extraShotsTotal))      $\(Double(extraShotsTotal) * precioExtraShot)
   Leche (\(agregosLeche))            $\(Double(agregosLeche) * precioLeche)
   --------------------------------
   Subtotal:            $\(subtotal)
   Propina (15%):       $\(propina)
   --------------------------------
   TOTAL:               $\(total)
   ================================
   ¡Gracias por tu visita!
   Items ordenados: \(items)
   ================================
"""

print(recibo)
