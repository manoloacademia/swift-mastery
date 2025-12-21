# Ejercicios: Tipos y Colecciones en Swift

> **Instrucciones:** Resuelve cada ejercicio en un Playground de Xcode.
> **Tiempo estimado total:** 60-90 minutos
> **Nivel:** Principiante a Intermedio

---

## Ejercicio 1 ⭐

**Tema:** Creación básica de Arrays
**Dificultad:** Básico
**Tiempo estimado:** 3 minutos

### Enunciado
Estás creando una app de lista de compras. Declara y manipula arrays básicos.

### Código Inicial
```swift
// 1. Crea un array de strings con 5 productos para comprar
let productos: [String] = []  // Tu código aquí


// 2. Crea un array de precios (Double) correspondientes
var precios: [Double] = []  // Tu código aquí


// 3. Imprime cuántos productos hay en total
print("Total de productos: ???")


// 4. Imprime el primer y último producto
print("Primer producto: ???")
print("Último producto: ???")


// 5. Accede al precio del tercer producto
print("Precio del producto 3: ???")
```

### Tests de Verificación
```swift
// productos.count debería ser 5
// productos.first y productos.last deberían retornar Optionals
// precios[2] debería dar el tercer precio (índice 2)
```

<details>
<summary>💡 Hint</summary>
Recuerda que los índices empiezan en 0. Usa `.first`, `.last` y `.count` como propiedades del array.
</details>

---

## Ejercicio 2 ⭐

**Tema:** Modificación de Arrays
**Dificultad:** Básico
**Tiempo estimado:** 5 minutos

### Enunciado
Gestiona una lista de tareas pendientes.

### Código Inicial
```swift
// Array inicial de tareas
var tareas = ["Comprar leche", "Estudiar Swift", "Hacer ejercicio"]

// 1. Agrega "Llamar a mamá" al final del array


// 2. Inserta "Pagar facturas" al inicio del array (posición 0)


// 3. Imprime el array actualizado
print("Tareas actuales: \(tareas)")


// 4. Elimina la segunda tarea (índice 1)


// 5. Cambia la última tarea por "Meditar 10 minutos"


// 6. Imprime el array final y su cantidad de elementos
print("Tareas finales: \(tareas)")
print("Total de tareas: \(tareas.count)")
```

### Resultado Esperado
```
// El array final debería tener 4 elementos
// Debería contener: ["Pagar facturas", "Estudiar Swift", "Hacer ejercicio", "Meditar 10 minutos"]
```

<details>
<summary>💡 Hint</summary>
Usa `.append()`, `.insert(at:)`, `.remove(at:)`, y acceso por índice con `=` para modificar.
</details>

---

## Ejercicio 3 ⭐⭐

**Tema:** Iteración sobre Arrays
**Dificultad:** Básico
**Tiempo estimado:** 5 minutos

### Enunciado
Procesa una lista de temperaturas diarias.

### Código Inicial
```swift
let temperaturas = [22.5, 18.0, 25.3, 19.8, 23.1, 17.5, 26.0]

// 1. Recorre el array e imprime cada temperatura con formato:
//    "Día 1: 22.5°C"


// 2. Calcula la suma de todas las temperaturas
var suma = 0.0
// Tu código aquí


// 3. Calcula el promedio
let promedio = 0.0  // Tu código


// 4. Imprime el promedio con 2 decimales
print("Temperatura promedio: \(String(format: "%.2f", promedio))°C")


// 5. Cuenta cuántos días tuvieron temperatura mayor a 20°C
var diasCalidos = 0
// Tu código aquí

print("Días con más de 20°C: \(diasCalidos)")
```

<details>
<summary>💡 Hint</summary>
Usa `for (indice, valor) in array.enumerated()` para iterar con índice. Para contar, usa una condición dentro del loop.
</details>

---

## Ejercicio 4 ⭐⭐

**Tema:** Sets básicos
**Dificultad:** Intermedio
**Tiempo estimado:** 5 minutos

### Enunciado
Gestiona etiquetas únicas para publicaciones en redes sociales.

### Código Inicial
```swift
// 1. Crea un Set con etiquetas para un post
var tagsPost1: Set<String> = ["swift", "ios", "programacion", "swift"]
// ¿Cuántos elementos tiene realmente?
print("Tags del post 1: \(tagsPost1.count)")  // ¿3 o 4?


// 2. Crea otro Set para un segundo post
var tagsPost2: Set<String> = ["ios", "android", "mobile", "desarrollo"]


// 3. Agrega una nueva etiqueta al post 1
// Agrega "apple" y verifica si se insertó
let (insertado, _) = tagsPost1.insert("apple")
print("¿Se insertó 'apple'?: \(insertado)")


// 4. Intenta agregar "swift" de nuevo
// Verifica si se insertó
let (insertadoDuplicado, _) = tagsPost1.insert("swift")
print("¿Se insertó 'swift' duplicado?: \(insertadoDuplicado)")


// 5. Verifica si el post 1 contiene la etiqueta "ios"
print("¿Contiene 'ios'?: ???")


// 6. Elimina "programacion" del post 1
// Tu código
```

<details>
<summary>💡 Hint</summary>
Los Sets eliminan duplicados automáticamente. El método `.insert()` retorna una tupla `(inserted: Bool, memberAfterInsert: Element)`.
</details>

---

## Ejercicio 5 ⭐⭐

**Tema:** Operaciones de Sets
**Dificultad:** Intermedio
**Tiempo estimado:** 7 minutos

### Enunciado
Analiza los cursos que están tomando diferentes estudiantes.

### Código Inicial
```swift
let cursosAna: Set = ["Swift", "Python", "SQL", "Git"]
let cursosCarlos: Set = ["Swift", "JavaScript", "React", "Git"]
let cursosMaria: Set = ["Python", "JavaScript", "SQL"]

// 1. ¿Qué cursos están tomando Ana Y Carlos? (intersección)
let cursosComunes = Set<String>()  // Tu código


// 2. ¿Qué cursos están tomando Ana O Carlos? (unión)
let todosCursosAnaCarlos = Set<String>()  // Tu código


// 3. ¿Qué cursos toma Ana pero NO Carlos? (diferencia)
let soloAna = Set<String>()  // Tu código


// 4. ¿Qué cursos son exclusivos de cada uno? (diferencia simétrica)
let cursosExclusivos = Set<String>()  // Tu código


// 5. ¿Cuántos cursos únicos hay en total entre los tres?
let todosLosCursos = Set<String>()  // Tu código
print("Total de cursos únicos: \(todosLosCursos.count)")


// 6. ¿María toma todos los cursos que toma Carlos? (es superconjunto)
let mariaSuperset = false  // Tu código
print("¿María toma todos los cursos de Carlos?: \(mariaSuperset)")


// Imprime los resultados
print("Cursos en común (Ana ∩ Carlos): \(cursosComunes)")
print("Todos los cursos (Ana ∪ Carlos): \(todosCursosAnaCarlos)")
print("Solo Ana: \(soloAna)")
print("Exclusivos: \(cursosExclusivos)")
```

<details>
<summary>💡 Hint</summary>
Usa: `.intersection()`, `.union()`, `.subtracting()`, `.symmetricDifference()`, `.isSuperset(of:)`.
</details>

---

## Ejercicio 6 ⭐⭐

**Tema:** Dictionaries básicos
**Dificultad:** Intermedio
**Tiempo estimado:** 7 minutos

### Enunciado
Gestiona un inventario de productos de una tienda.

### Código Inicial
```swift
// 1. Crea un diccionario de inventario: [Producto: Cantidad]
var inventario: [String: Int] = [
    "Laptops": 15,
    "Teclados": 45,
    "Ratones": 60,
    "Monitores": 20
]

// 2. Imprime cuántos teclados hay
// Cuidado: el acceso retorna Optional
print("Teclados en stock: ???")


// 3. Agrega un nuevo producto: "Webcams" con 30 unidades


// 4. Actualiza la cantidad de monitores a 18


// 5. Vende 10 laptops (reduce el inventario)
// Usa acceso con valor por defecto para evitar nil


// 6. Intenta acceder a un producto que no existe
let audifonos = inventario["Audífonos"]
print("Audífonos: \(audifonos)")  // Imprime nil


// 7. Accede a "Audífonos" con un valor por defecto de 0
let audifonosStock = 0  // Tu código con default
print("Audífonos en stock (con default): \(audifonosStock)")


// 8. Elimina "Ratones" del inventario


// 9. Imprime el inventario final
print("\n=== INVENTARIO FINAL ===")
for (producto, cantidad) in inventario {
    print("\(producto): \(cantidad) unidades")
}

// 10. Imprime cuántos tipos de productos diferentes hay
print("\nTipos de productos: \(inventario.count)")
```

<details>
<summary>💡 Hint</summary>
Usa `dictionary["clave", default: valor]` para acceso seguro. Para eliminar: `dictionary["clave"] = nil` o `.removeValue(forKey:)`.
</details>

---

## Ejercicio 7 ⭐⭐⭐

**Tema:** Tuples y retorno de funciones
**Dificultad:** Intermedio
**Tiempo estimado:** 7 minutos

### Enunciado
Crea funciones que retornen múltiples valores usando tuples.

### Código Inicial
```swift
// 1. Función que calcula estadísticas de un array de números
func calcularEstadisticas(_ numeros: [Double]) -> (minimo: Double, maximo: Double, promedio: Double) {
    // Tu implementación aquí
    let min = 0.0
    let max = 0.0
    let avg = 0.0

    return (min, max, avg)
}

let datos = [45.5, 67.8, 23.1, 89.0, 56.3, 34.7]
let stats = calcularEstadisticas(datos)

print("Mínimo: \(stats.minimo)")
print("Máximo: \(stats.maximo)")
print("Promedio: \(stats.promedio)")


// 2. Función que parsea un código HTTP
func analizarRespuestaHTTP(_ codigo: Int) -> (tipo: String, descripcion: String, esExito: Bool) {
    // Tu implementación aquí
    // 200-299: éxito
    // 400-499: error del cliente
    // 500-599: error del servidor

    let tipo = ""
    let descripcion = ""
    let exito = false

    return (tipo, descripcion, exito)
}

let respuesta = analizarRespuestaHTTP(404)
print("\nCódigo HTTP:")
print("Tipo: \(respuesta.tipo)")
print("Descripción: \(respuesta.descripcion)")
print("¿Es exitoso?: \(respuesta.esExito)")


// 3. Descomponer una tuple
let coordenada = (latitud: 40.4168, longitud: -3.7038, ciudad: "Madrid")

// Descomposición completa
let (lat, lon, ciudad) = coordenada
print("\nCiudad: \(ciudad) está en (\(lat), \(lon))")

// Descomposición parcial (ignorando ciudad con _)
let (latitud, longitud, _) = coordenada
print("Coordenadas: \(latitud), \(longitud)")
```

<details>
<summary>💡 Hint</summary>
Para estadísticas, usa `.min()`, `.max()` y `.reduce()`. Para HTTP: usa rangos `200...299`, `400...499`, etc.
</details>

---

## Ejercicio 8 ⭐⭐⭐

**Tema:** Higher-Order Functions (map, filter, reduce)
**Dificultad:** Avanzado
**Tiempo estimado:** 10 minutos

### Enunciado
Procesa datos de usuarios usando funciones de orden superior.

### Código Inicial
```swift
// Array de edades de usuarios
let edades = [15, 28, 17, 34, 19, 42, 16, 25, 30, 18]

// 1. Filtra solo los usuarios mayores de edad (>= 18)
let mayoresDeEdad: [Int] = []  // Usa filter


// 2. Convierte las edades a strings con formato "X años"
let edadesFormateadas: [String] = []  // Usa map


// 3. Calcula la suma de todas las edades
let sumaEdades: Int = 0  // Usa reduce


// 4. Encuentra el promedio de edad
let promedioEdad: Double = 0.0  // Usa reduce y conversión


// Imprime resultados
print("Mayores de edad: \(mayoresDeEdad)")
print("Edades formateadas: \(edadesFormateadas)")
print("Suma total: \(sumaEdades)")
print("Promedio: \(promedioEdad)")


// 5. DESAFÍO: Encadenamiento
// Filtra mayores de edad, duplica sus edades, y suma el resultado
let sumaDuplicados: Int = 0  // Tu código


print("Suma de edades duplicadas (solo mayores): \(sumaDuplicados)")


// 6. Operaciones con Dictionaries
let precios = ["iPhone": 999, "iPad": 799, "AirPods": 249, "Watch": 399]

// Aplica 21% de IVA a todos los precios (usa mapValues)
let preciosConIVA: [String: Double] = [:]  // Tu código


// Filtra solo productos que cuestan más de 300
let productosCaros: [String: Int] = [:]  // Tu código


print("\nPrecios con IVA: \(preciosConIVA)")
print("Productos > $300: \(productosCaros)")
```

<details>
<summary>💡 Hint</summary>
- `filter`: `array.filter { $0 >= 18 }`
- `map`: `array.map { "\($0) años" }`
- `reduce`: `array.reduce(0, +)` o `array.reduce(0) { $0 + $1 }`
- Encadenar: `array.filter { }.map { }.reduce()`
</details>

---

## Ejercicio 9 ⭐⭐⭐

**Tema:** Combinación de colecciones complejas
**Dificultad:** Avanzado
**Tiempo estimado:** 12 minutos

### Enunciado
Gestiona un sistema de estudiantes con múltiples colecciones.

### Código Inicial
```swift
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
// Retorna [ID: Promedio]
var promedios: [Int: Double] = [:]
// Tu código aquí



// 2. Encuentra al estudiante con el promedio más alto
var mejorEstudianteID = 0
var mejorPromedio = 0.0
// Tu código aquí



// 3. Crea una lista de nombres de estudiantes becados
var nombresBecados: [String] = []
// Tu código aquí



// 4. Encuentra estudiantes con promedio >= 85 que NO están becados
var candidatosABeca: [String] = []
// Tu código aquí



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
// Agrega una nueva nota: 94
// Tu código



print("\nCalificaciones actualizadas de Ana: \(calificaciones[101] ?? [])")
```

<details>
<summary>💡 Hint</summary>
- Para promedios: itera sobre `calificaciones` y usa `.reduce()` en cada array
- Para mejor estudiante: itera sobre `promedios` y compara
- Para becados: filtra `becados` y mapea a nombres usando `estudiantes`
- Para candidatos: combina condiciones de `promedios` y verificación en `becados`
</details>

---

## Ejercicio 10 ⭐⭐⭐

**Tema:** Proyecto integrador - Sistema de Biblioteca
**Dificultad:** Avanzado
**Tiempo estimado:** 15 minutos

### Enunciado
Crea un sistema completo de gestión de biblioteca usando todas las colecciones.

### Código Inicial
```swift
// Typealias para mejor legibilidad
typealias LibroID = String
typealias UsuarioID = Int

// Estructura de datos
// Catálogo de libros: [ID: (título, autor, género)]
var catalogo: [LibroID: (titulo: String, autor: String, genero: String)] = [
    "L001": ("1984", "George Orwell", "Ficción"),
    "L002": ("El Quijote", "Cervantes", "Clásico"),
    "L003": ("Sapiens", "Yuval Harari", "Historia"),
    "L004": ("Swift Programming", "Apple Inc.", "Tecnología"),
    "L005": ("Cien años de soledad", "García Márquez", "Ficción")
]

// Libros prestados: [LibroID: UsuarioID]
var prestamos: [LibroID: UsuarioID] = [
    "L001": 201,
    "L004": 202
]

// Usuarios: [ID: Nombre]
let usuarios: [UsuarioID: String] = [
    201: "Ana Torres",
    202: "Carlos Ruiz",
    203: "María López"
]

// Géneros favoritos por usuario: [UsuarioID: Set de géneros]
var generosPreferidos: [UsuarioID: Set<String>] = [
    201: ["Ficción", "Historia"],
    202: ["Tecnología", "Ficción"],
    203: ["Clásico", "Historia"]
]


// ========= IMPLEMENTA LAS SIGUIENTES FUNCIONES =========

// 1. Función: Listar libros disponibles (no prestados)
func librosDisponibles() -> [LibroID] {
    // Tu código
    return []
}


// 2. Función: Prestar un libro
// Retorna: (éxito, mensaje)
func prestarLibro(libroID: LibroID, usuarioID: UsuarioID) -> (Bool, String) {
    // Verificar que el libro existe
    // Verificar que el usuario existe
    // Verificar que el libro está disponible
    // Registrar el préstamo

    return (false, "No implementado")
}


// 3. Función: Devolver un libro
func devolverLibro(libroID: LibroID) -> (Bool, String) {
    // Verificar que el libro está prestado
    // Eliminar del registro de préstamos

    return (false, "No implementado")
}


// 4. Función: Recomendar libros a un usuario
// Basado en sus géneros preferidos y que estén disponibles
func recomendarLibros(usuarioID: UsuarioID) -> [String] {
    // Obtener géneros preferidos del usuario
    // Filtrar libros disponibles de esos géneros
    // Retornar títulos

    return []
}


// 5. Función: Reporte de usuario
func reporteUsuario(usuarioID: UsuarioID) -> String {
    // Crear un reporte que incluya:
    // - Nombre del usuario
    // - Libros que tiene prestados actualmente
    // - Géneros preferidos
    // - Recomendaciones

    return "No implementado"
}


// ========= PRUEBAS =========

print("===== BIBLIOTECA SWIFT =====\n")

// Listar disponibles
print("Libros disponibles: \(librosDisponibles())")

// Prestar libro
let (exitoPrestamo, mensajePrestamo) = prestarLibro(libroID: "L002", usuarioID: 203)
print("\nPrestar L002 a María: \(mensajePrestamo)")

// Intentar prestar libro ya prestado
let (exitoPrestamo2, mensajePrestamo2) = prestarLibro(libroID: "L001", usuarioID: 203)
print("Prestar L001 a María: \(mensajePrestamo2)")

// Devolver libro
let (exitoDevolucion, mensajeDevolucion) = devolverLibro(libroID: "L001")
print("\nDevolver L001: \(mensajeDevolucion)")

// Recomendaciones
print("\nRecomendaciones para Ana (201): \(recomendarLibros(usuarioID: 201))")
print("Recomendaciones para Carlos (202): \(recomendarLibros(usuarioID: 202))")

// Reporte completo
print("\n" + reporteUsuario(usuarioID: 201))
print("\n" + reporteUsuario(usuarioID: 202))
```

### Resultado Esperado
```
===== BIBLIOTECA SWIFT =====

Libros disponibles: ["L002", "L003", "L005"]

Prestar L002 a María: ✓ Libro prestado exitosamente
Prestar L001 a María: ✗ El libro ya está prestado

Devolver L001: ✓ Libro devuelto exitosamente

Recomendaciones para Ana (201): ["Cien años de soledad", "Sapiens"]
Recomendaciones para Carlos (202): ["Cien años de soledad", "Swift Programming"]

========== REPORTE USUARIO ==========
Nombre: Ana Torres (ID: 201)
Libros prestados: Ninguno
Géneros preferidos: Ficción, Historia
Recomendaciones: Cien años de soledad, Sapiens
```

<details>
<summary>💡 Hint</summary>

Para libros disponibles:
```swift
return catalogo.keys.filter { !prestamos.keys.contains($0) }.sorted()
```

Para prestar libro:
```swift
guard catalogo[libroID] != nil else { return (false, "Libro no existe") }
guard usuarios[usuarioID] != nil else { return (false, "Usuario no existe") }
guard prestamos[libroID] == nil else { return (false, "Libro ya prestado") }
prestamos[libroID] = usuarioID
return (true, "Préstamo exitoso")
```
</details>

---

## 🎯 Autoevaluación

Marca los conceptos que ya dominas:

- [ ] Crear y manipular Arrays
- [ ] Usar Sets y entender cuándo son apropiados
- [ ] Trabajar con Dictionaries y acceso seguro
- [ ] Usar tuples para retornar múltiples valores
- [ ] Aplicar `map`, `filter` y `reduce` fluidamente
- [ ] Encadenar operaciones de colecciones
- [ ] Elegir la colección correcta para cada problema
- [ ] Combinar diferentes tipos de colecciones
- [ ] Entender la diferencia entre valor y referencia en colecciones

**Si marcaste 7 o más:** ¡Excelente! Estás listo para el siguiente tema.
**Si marcaste menos de 7:** Repasa los conceptos que te faltan antes de continuar.

---

## Próximo Paso

Cuando hayas completado estos ejercicios, continúa con:
→ **[03 - Control de Flujo](../03-control-de-flujo/ejercicios.md)**

---

*Generado para Swift Mastery System*
