import Cocoa

// Ejercicio 3: Iteración sobre Arrays

let temperaturas = [22.5, 18.0, 25.3, 19.8, 23.1, 17.5, 26.0]

// 1. Recorre el array e imprime cada temperatura con formato
for (indice, temperatura) in temperaturas.enumerated() {
    print("Día \(indice + 1): \(temperatura)°C")
}

// 2. Calcula la suma de todas las temperaturas
var suma = 0.0
for temperatura in temperaturas {
    suma += temperatura
}
print("\nSuma total: \(suma)°C")

// 3. Calcula el promedio
let promedio = suma / Double(temperaturas.count)

// 4. Imprime el promedio con 2 decimales
print("Temperatura promedio: \(String(format: "%.2f", promedio))°C")

// 5. Cuenta cuántos días tuvieron temperatura mayor a 20°C
var diasCalidos = 0
for temperatura in temperaturas {
    if temperatura > 20 {
        diasCalidos += 1
    }
}

print("Días con más de 20°C: \(diasCalidos)")
