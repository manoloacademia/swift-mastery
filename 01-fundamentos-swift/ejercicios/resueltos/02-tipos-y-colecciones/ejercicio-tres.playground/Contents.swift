import Cocoa

// Ejercicio 3: Iteración sobre Arrays

let temperaturas = [22.5, 18.0, 25.3, 19.8, 23.1, 17.5, 26.0]

// 1. Recorre el array e imprime cada temperatura con formato
for element in temperaturas {
    print("La temperatura es: \(element)°C")
}
// 2. Calcula la suma de todas las temperaturas
let suma = temperaturas.reduce(0,+)
// 3. Calcula el promedio
let promedio = Double(suma) / Double(temperaturas.count)
// 4. Imprime el promedio con 2 decimales
print("El promedio es: \(String(format: "%.2f", promedio))°C")
// 5. Cuenta cuántos días tuvieron temperatura mayor a 20°C
var cuenta = 0
for temperatura in temperaturas {
    if temperatura > 20 {
        cuenta += 1
    }
}
print("los días cálidos fueron: \(cuenta)")

