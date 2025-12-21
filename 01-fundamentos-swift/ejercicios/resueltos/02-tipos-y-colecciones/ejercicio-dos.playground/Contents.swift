import Cocoa

// Ejercicio 2: Modificación de Arrays

// Array inicial de tareas
var tareas = ["Comprar leche", "Estudiar Swift", "Hacer ejercicio"]

// 1. Agrega "Llamar a mamá" al final del array
tareas.append("Llamar a mamá")

// 2. Inserta "Pagar facturas" al inicio del array (posición 0)
tareas.insert("Pagar facturas", at: 0)

// 3. Imprime el array actualizado
print("Tareas actuales: \(tareas)")

// 4. Elimina la segunda tarea (índice 1)
tareas.remove(at: 1)

// 5. Cambia la última tarea por "Meditar 10 minutos"
tareas[tareas.count - 1] = "Meditar 10 minutos"

// 6. Imprime el array final y su cantidad de elementos
print("Tareas finales: \(tareas)")
print("Total de tareas: \(tareas.count)")
