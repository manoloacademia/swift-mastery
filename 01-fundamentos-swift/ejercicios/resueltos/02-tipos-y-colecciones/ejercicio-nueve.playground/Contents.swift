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
var promedios: [Int: Double] = [:]
for (id, notas) in calificaciones {
    let promedio = notas.reduce(0.0, +) / Double(notas.count)
    promedios[id] = promedio
}

// 2. Encuentra al estudiante con el promedio más alto
var mejorEstudianteID = 0
var mejorPromedio = 0.0
for (id, promedio) in promedios {
    if promedio > mejorPromedio {
        mejorPromedio = promedio
        mejorEstudianteID = id
    }
}

// 3. Crea una lista de nombres de estudiantes becados
var nombresBecados: [String] = []
for id in becados {
    if let nombre = estudiantes[id] {
        nombresBecados.append(nombre)
    }
}

// 4. Encuentra estudiantes con promedio >= 85 que NO están becados
var candidatosABeca: [String] = []
for (id, promedio) in promedios {
    if promedio >= 85 && !becados.contains(id) {
        if let nombre = estudiantes[id] {
            candidatosABeca.append(nombre)
        }
    }
}

// 5. Crea un reporte completo
print("========== REPORTE DE ESTUDIANTES ==========")
for (id, nombre) in estudiantes.sorted(by: { $0.key < $1.key }) {
    let promedio = promedios[id] ?? 0.0
    let esBecado = becados.contains(id)
    let status = esBecado ? "✓ BECADO" : ""

    print("\(id) - \(nombre): \(String(format: "%.2f", promedio)) \(status)")
}

print("\n========== ESTADÍSTICAS ==========")
print("Mejor estudiante: \(estudiantes[mejorEstudianteID] ?? "N/A") con \(String(format: "%.2f", mejorPromedio))")
print("Estudiantes becados: \(nombresBecados.joined(separator: ", "))")
print("Candidatos a beca: \(candidatosABeca.joined(separator: ", "))")

// 6. BONUS: Actualiza las calificaciones de Ana (ID 101)
calificaciones[101]?.append(94)

print("\nCalificaciones actualizadas de Ana: \(calificaciones[101] ?? [])")
