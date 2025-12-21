import Cocoa

// Ejercicio 5: Operaciones de Sets

let cursosAna: Set = ["Swift", "Python", "SQL", "Git"]
let cursosCarlos: Set = ["Swift", "JavaScript", "React", "Git"]
let cursosMaria: Set = ["Python", "JavaScript", "SQL"]

// 1. ¿Qué cursos están tomando Ana Y Carlos? (intersección)
let cursosComunes = cursosAna.intersection(cursosCarlos)

// 2. ¿Qué cursos están tomando Ana O Carlos? (unión)
let todosCursosAnaCarlos = cursosAna.union(cursosCarlos)

// 3. ¿Qué cursos toma Ana pero NO Carlos? (diferencia)
let soloAna = cursosAna.subtracting(cursosCarlos)

// 4. ¿Qué cursos son exclusivos de cada uno? (diferencia simétrica)
let cursosExclusivos = cursosAna.symmetricDifference(cursosCarlos)

// 5. ¿Cuántos cursos únicos hay en total entre los tres?
let todosLosCursos = cursosAna.union(cursosCarlos).union(cursosMaria)
print("Total de cursos únicos: \(todosLosCursos.count)")

// 6. ¿María toma todos los cursos que toma Carlos? (es superconjunto)
let mariaSuperset = cursosMaria.isSuperset(of: cursosCarlos)
print("¿María toma todos los cursos de Carlos?: \(mariaSuperset)")

// Imprime los resultados
print("\nCursos en común (Ana ∩ Carlos): \(cursosComunes)")
print("Todos los cursos (Ana ∪ Carlos): \(todosCursosAnaCarlos)")
print("Solo Ana: \(soloAna)")
print("Exclusivos: \(cursosExclusivos)")
