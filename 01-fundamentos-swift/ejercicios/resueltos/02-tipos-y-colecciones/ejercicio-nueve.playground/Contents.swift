import Cocoa

// Ejercicio 9: Combinación de colecciones complejas

// Diccionario de estudiantes: [ID: Nombre]
let estudiantes = [
    101: "Ana García",
    102: "Carlos López",
    103: "María Ruiz",
    104: "Pedro Martínez",
    105: "Laura Sánchez"
]

// Diccionario de calificaciones: [ID: [Calificaciones]]
var calificaciones: [Int: [Double]] = [
    101: [85, 92, 88, 90],
    102: [78, 85, 80, 82],
    103: [95, 98, 92, 96],
    104: [70, 75, 72, 68],
    105: [88, 90, 87, 89]
]

// Set de estudiantes becados
let becados: Set = [101, 103, 105]

// ========= TAREAS =========

// 1. Calcula el promedio de cada estudiante

// 2. Encuentra al estudiante con el promedio más alto

// 3. Crea una lista de nombres de estudiantes becados

// 4. Encuentra estudiantes con promedio >= 85 que NO están becados

// 5. Crea un reporte completo que muestre:
//    - ID, nombre y promedio de cada estudiante
//    - Marca a los becados
//    - Ordena por ID

// 6. BONUS: Actualiza las calificaciones de Ana (ID 101) agregando una nueva nota
