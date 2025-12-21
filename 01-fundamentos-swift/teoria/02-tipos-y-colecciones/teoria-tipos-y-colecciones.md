# 02 - Tipos y Colecciones en Swift

> *"Las colecciones son los bloques de construcción fundamentales de cualquier aplicación. Domínalas y dominarás la manipulación de datos."* — Swift Community

---

## 📚 Índice

1. [Introducción a las Colecciones](#introducción-a-las-colecciones)
2. [Arrays: Listas Ordenadas](#arrays-listas-ordenadas)
3. [Sets: Conjuntos Únicos](#sets-conjuntos-únicos)
4. [Dictionaries: Pares Clave-Valor](#dictionaries-pares-clave-valor)
5. [Tuples: Grupos de Valores](#tuples-grupos-de-valores)
6. [Type Aliases: Nombres Personalizados](#type-aliases-nombres-personalizados)
7. [Eligiendo la Colección Correcta](#eligiendo-la-colección-correcta)
8. [Operaciones Avanzadas con Colecciones](#operaciones-avanzadas-con-colecciones)
9. [Patrones Comunes y Best Practices](#patrones-comunes-y-best-practices)
10. [Errores Comunes de Principiantes](#errores-comunes-de-principiantes)
11. [Mini-Ejercicios de Verificación](#mini-ejercicios-de-verificación)
12. [Conexión con Temas Siguientes](#conexión-con-temas-siguientes)

---

## Introducción a las Colecciones

Swift proporciona tres **tipos de colección primarios** para almacenar grupos de valores:

| Colección | Descripción | Ordenada | Valores Únicos |
|-----------|-------------|----------|----------------|
| `Array` | Lista ordenada de valores | ✅ Sí | ❌ No (permite duplicados) |
| `Set` | Conjunto de valores únicos | ❌ No | ✅ Sí |
| `Dictionary` | Pares clave-valor | ❌ No | ✅ Claves únicas |

### Características Fundamentales

Todas las colecciones en Swift son:

- **Genéricas:** Almacenan un tipo específico (`Array<String>`, `Set<Int>`)
- **Type-safe:** El compilador garantiza que solo añadas elementos del tipo correcto
- **Value types:** Se copian cuando se asignan (no son referencias)
- **Mutables o inmutables:** Depende de si usas `var` o `let`

```swift
// Colección mutable (puedes modificarla)
var listaCompras = ["Leche", "Pan", "Huevos"]
listaCompras.append("Frutas")  // ✅ Funciona

// Colección inmutable (solo lectura)
let diasSemana = ["Lun", "Mar", "Mié", "Jue", "Vie", "Sáb", "Dom"]
// diasSemana.append("Otro")  // ❌ Error: no puedes modificar un let
```

---

## Arrays: Listas Ordenadas

Un `Array` almacena valores **del mismo tipo** en una **lista ordenada**. El mismo valor puede aparecer múltiples veces en diferentes posiciones.

### Creación de Arrays

```swift
// Sintaxis literal (la más común)
let numeros = [1, 2, 3, 4, 5]
let nombres = ["Ana", "Carlos", "María"]

// Sintaxis con tipo explícito
let precios: [Double] = [19.99, 29.99, 39.99]
let vacio: [String] = []

// Usando el inicializador
var enteros = Array<Int>()           // Array vacío
var repetidos = Array(repeating: 0, count: 5)  // [0, 0, 0, 0, 0]

// Desde un rango
let rango = Array(1...5)  // [1, 2, 3, 4, 5]
```

### Acceso a Elementos

Los índices en Swift **empiezan en 0**, no en 1.

```swift
let frutas = ["Manzana", "Banana", "Cereza", "Durazno"]
//             índice 0    índice 1   índice 2   índice 3

// Acceso por índice
let primera = frutas[0]        // "Manzana"
let tercera = frutas[2]        // "Cereza"

// Propiedades útiles
frutas.count                   // 4 (número de elementos)
frutas.isEmpty                 // false
frutas.first                   // Optional("Manzana")
frutas.last                    // Optional("Durazno")

// Acceso seguro con índices
if frutas.indices.contains(10) {
    print(frutas[10])
} else {
    print("Índice fuera de rango")  // Se ejecuta esto
}
```

> ⚠️ **Cuidado:** Acceder a un índice que no existe causa un **crash** en tiempo de ejecución.

```swift
let colores = ["Rojo", "Verde", "Azul"]
// let error = colores[5]  // 💥 Fatal error: Index out of range
```

### Modificación de Arrays

```swift
var tareas = ["Comprar leche", "Llamar a mamá"]

// Agregar elementos
tareas.append("Ir al gym")                    // Al final
tareas.insert("Urgente: pagar luz", at: 0)   // En posición específica
tareas += ["Leer libro"]                      // Concatenar

// Modificar elementos
tareas[0] = "Pagar luz (hecho)"              // Reemplazar por índice
tareas[1...2] = ["Tarea combinada"]          // Reemplazar rango

// Eliminar elementos
tareas.removeLast()                          // Elimina y retorna el último
tareas.remove(at: 0)                         // Elimina en posición específica
tareas.removeAll()                           // Vacía el array

// Eliminar elementos que cumplan condición (Swift 5+)
var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numeros.removeAll { $0 % 2 == 0 }  // Elimina pares: [1, 3, 5, 7, 9]
```

### Iteración sobre Arrays

```swift
let lenguajes = ["Swift", "Kotlin", "Rust", "Go"]

// Iteración simple
for lenguaje in lenguajes {
    print("Me gusta \(lenguaje)")
}

// Con índice y valor
for (indice, lenguaje) in lenguajes.enumerated() {
    print("\(indice + 1). \(lenguaje)")
}
// Output:
// 1. Swift
// 2. Kotlin
// 3. Rust
// 4. Go

// Iteración inversa
for lenguaje in lenguajes.reversed() {
    print(lenguaje)
}
```

### Operaciones Útiles con Arrays

```swift
var puntuaciones = [85, 92, 78, 96, 88, 72]

// Ordenamiento
puntuaciones.sort()                      // Ordena in-place: [72, 78, 85, 88, 92, 96]
let ordenados = puntuaciones.sorted()    // Retorna nuevo array ordenado
let descendente = puntuaciones.sorted(by: >)  // [96, 92, 88, 85, 78, 72]

// Búsqueda
puntuaciones.contains(85)                // true
puntuaciones.firstIndex(of: 92)          // Optional(4) - índice donde está
puntuaciones.first(where: { $0 > 90 })   // Optional(92) - primer elemento que cumple

// Filtrado
let aprobados = puntuaciones.filter { $0 >= 80 }  // [85, 88, 92, 96]

// Transformación (map)
let porcentajes = puntuaciones.map { "\($0)%" }   // ["85%", "88%", ...]

// Reducción
let suma = puntuaciones.reduce(0, +)              // 511
let promedio = Double(suma) / Double(puntuaciones.count)  // 85.16...

// Verificación
let todosAprobados = puntuaciones.allSatisfy { $0 >= 70 }  // true
```

### Arrays Multidimensionales

```swift
// Matriz 3x3
var tablero: [[String]] = [
    ["X", "O", "X"],
    ["O", "X", "O"],
    ["O", "X", "X"]
]

// Acceso
let centro = tablero[1][1]  // "X"

// Modificación
tablero[0][0] = "O"

// Iteración
for fila in tablero {
    for celda in fila {
        print(celda, terminator: " ")
    }
    print()  // Nueva línea después de cada fila
}
```

---

## Sets: Conjuntos Únicos

Un `Set` almacena valores **únicos del mismo tipo** sin un orden definido. Es ideal cuando necesitas garantizar que no haya duplicados y el orden no importa.

### Creación de Sets

```swift
// Sintaxis literal (necesita anotación de tipo)
let numeros: Set<Int> = [1, 2, 3, 4, 5]
let vocales: Set = ["a", "e", "i", "o", "u"]  // Swift infiere Set<String>

// Set vacío
var etiquetas = Set<String>()

// Desde un Array (elimina duplicados automáticamente)
let conDuplicados = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
let sinDuplicados = Set(conDuplicados)  // {1, 2, 3, 4} (orden no garantizado)
```

### Operaciones Básicas

```swift
var lenguajes: Set = ["Swift", "Python", "JavaScript"]

// Agregar
lenguajes.insert("Rust")        // Retorna tupla: (inserted: true, memberAfterInsert: "Rust")
lenguajes.insert("Swift")       // (inserted: false, ...) - ya existía

// Verificar existencia
lenguajes.contains("Swift")     // true
lenguajes.contains("Java")      // false

// Eliminar
lenguajes.remove("Python")      // Retorna Optional("Python")
lenguajes.remove("Go")          // Retorna nil (no existía)

// Propiedades
lenguajes.count                 // Número de elementos
lenguajes.isEmpty               // false
```

### Operaciones de Conjuntos

Esta es la verdadera potencia de los Sets: operaciones matemáticas de conjuntos.

```swift
let frontend: Set = ["HTML", "CSS", "JavaScript", "React"]
let backend: Set = ["Node.js", "Python", "JavaScript", "PostgreSQL"]

// Unión: todos los elementos de ambos sets
let todas = frontend.union(backend)
// {"HTML", "CSS", "JavaScript", "React", "Node.js", "Python", "PostgreSQL"}

// Intersección: elementos comunes
let comunes = frontend.intersection(backend)
// {"JavaScript"}

// Diferencia: elementos en A pero no en B
let soloFrontend = frontend.subtracting(backend)
// {"HTML", "CSS", "React"}

// Diferencia simétrica: elementos en A o B pero no en ambos
let exclusivos = frontend.symmetricDifference(backend)
// {"HTML", "CSS", "React", "Node.js", "Python", "PostgreSQL"}
```

### Relaciones entre Sets

```swift
let mamiferos: Set = ["Perro", "Gato", "Elefante", "Ballena"]
let mascotas: Set = ["Perro", "Gato", "Pez"]
let reptiles: Set = ["Serpiente", "Lagarto"]

// ¿Es subconjunto?
mascotas.isSubset(of: mamiferos)         // false (Pez no es mamífero)

// ¿Es superconjunto?
mamiferos.isSuperset(of: ["Perro", "Gato"])  // true

// ¿Son disjuntos? (sin elementos en común)
mamiferos.isDisjoint(with: reptiles)     // true

// ¿Subconjunto estricto? (subconjunto pero no igual)
let perrosGatos: Set = ["Perro", "Gato"]
perrosGatos.isStrictSubset(of: mamiferos)  // true
```

### Caso de Uso Real: Eliminar Duplicados Preservando Orden

```swift
// Los Sets no preservan orden, pero podemos usarlos para filtrar
func eliminarDuplicados<T: Hashable>(_ array: [T]) -> [T] {
    var visto = Set<T>()
    return array.filter { visto.insert($0).inserted }
}

let conDuplicados = ["A", "B", "A", "C", "B", "D", "A"]
let sinDuplicados = eliminarDuplicados(conDuplicados)
// ["A", "B", "C", "D"] - preserva el orden de primera aparición
```

---

## Dictionaries: Pares Clave-Valor

Un `Dictionary` almacena asociaciones entre claves únicas y valores. Es como un diccionario real: buscas una palabra (clave) y obtienes su definición (valor).

### Creación de Dictionaries

```swift
// Sintaxis literal
let capitales = [
    "España": "Madrid",
    "Francia": "París",
    "Italia": "Roma"
]

// Con tipo explícito
var edades: [String: Int] = [
    "Ana": 28,
    "Carlos": 35,
    "María": 22
]

// Dictionary vacío
var cache: [String: Data] = [:]
var puntos = Dictionary<String, Int>()
```

> **Importante:** Las claves deben conformar al protocolo `Hashable` (String, Int, y la mayoría de tipos básicos lo hacen).

### Acceso a Valores

```swift
let usuario = [
    "nombre": "Laura",
    "email": "laura@email.com",
    "ciudad": "Barcelona"
]

// Acceso por clave (retorna Optional)
let nombre = usuario["nombre"]     // Optional("Laura")
let telefono = usuario["telefono"] // nil (no existe)

// Acceso con valor por defecto
let pais = usuario["pais", default: "Desconocido"]  // "Desconocido"

// Desempaquetado seguro
if let email = usuario["email"] {
    print("Email: \(email)")
}
```

### Modificación de Dictionaries

```swift
var inventario = [
    "Manzanas": 50,
    "Bananas": 30,
    "Naranjas": 25
]

// Agregar o actualizar
inventario["Peras"] = 40           // Agrega nueva clave
inventario["Manzanas"] = 45        // Actualiza valor existente

// Actualizar con valor anterior
let anterior = inventario.updateValue(60, forKey: "Bananas")
// anterior = Optional(30), inventario["Bananas"] = 60

// Eliminar
inventario["Naranjas"] = nil       // Elimina la clave
let eliminado = inventario.removeValue(forKey: "Peras")  // Optional(40)

// Vaciar
inventario.removeAll()
```

### Iteración sobre Dictionaries

```swift
let poblacion = [
    "México": 128_900_000,
    "España": 47_420_000,
    "Argentina": 45_810_000
]

// Iterar sobre pares clave-valor
for (pais, habitantes) in poblacion {
    print("\(pais): \(habitantes) habitantes")
}

// Solo claves
for pais in poblacion.keys {
    print(pais)
}

// Solo valores
for habitantes in poblacion.values {
    print(habitantes)
}

// Obtener arrays de claves/valores
let paises = Array(poblacion.keys)        // ["México", "España", "Argentina"]
let cantidades = Array(poblacion.values)  // [128900000, 47420000, 45810000]

// Ordenar por clave
for (pais, habitantes) in poblacion.sorted(by: { $0.key < $1.key }) {
    print("\(pais): \(habitantes)")
}
```

### Operaciones Avanzadas

```swift
var carrito: [String: Int] = [
    "iPhone": 1,
    "AirPods": 2,
    "Cargador": 3
]

// Merge: combinar diccionarios
let nuevos = ["iPad": 1, "iPhone": 2]  // iPhone se actualiza
carrito.merge(nuevos) { actual, nuevo in nuevo }  // Usa el valor nuevo
// carrito = ["iPhone": 2, "AirPods": 2, "Cargador": 3, "iPad": 1]

// MapValues: transformar valores manteniendo claves
let precios = ["iPhone": 999, "iPad": 799, "AirPods": 249]
let conIVA = precios.mapValues { Double($0) * 1.21 }
// ["iPhone": 1208.79, "iPad": 966.79, "AirPods": 301.29]

// CompactMapValues: transformar y eliminar nils
let datosOpcionales = ["a": "1", "b": "dos", "c": "3"]
let numerosValidos = datosOpcionales.compactMapValues { Int($0) }
// ["a": 1, "c": 3] - "dos" no se pudo convertir

// Filter
let caros = precios.filter { $0.value > 500 }
// ["iPhone": 999, "iPad": 799]

// Reduce
let total = precios.values.reduce(0, +)  // 2047
```

### Dictionaries Anidados

```swift
// Estructura de datos compleja
var usuarios: [String: [String: Any]] = [
    "usr001": [
        "nombre": "Ana García",
        "edad": 28,
        "activo": true
    ],
    "usr002": [
        "nombre": "Carlos López",
        "edad": 35,
        "activo": false
    ]
]

// Acceso anidado
if let usuario = usuarios["usr001"],
   let nombre = usuario["nombre"] as? String {
    print("Usuario: \(nombre)")
}

// Modificación anidada
usuarios["usr001"]?["edad"] = 29
```

> **Nota:** Para datos estructurados complejos, es mejor usar `struct` o `class` en lugar de diccionarios anidados. Verás esto en el tema 06.

---

## Tuples: Grupos de Valores

Una **Tuple** agrupa múltiples valores en un único valor compuesto. A diferencia de los arrays, cada elemento puede ser de **diferente tipo**.

### Creación de Tuples

```swift
// Tuple básica
let coordenada = (40.4168, -3.7038)  // (Double, Double)
let persona = ("Ana", 28, true)       // (String, Int, Bool)

// Con etiquetas (nombres)
let punto = (x: 10, y: 20)
let usuario = (nombre: "Carlos", edad: 30, premium: false)

// Tipo explícito
let resultado: (exito: Bool, mensaje: String) = (true, "Operación completada")
```

### Acceso a Elementos

```swift
let http404 = (404, "Not Found")

// Por índice
let codigo = http404.0        // 404
let descripcion = http404.1   // "Not Found"

// Por nombre (si tiene etiquetas)
let respuesta = (status: 200, body: "OK")
let statusCode = respuesta.status  // 200
let body = respuesta.body          // "OK"

// Descomposición (destructuring)
let (status, mensaje) = http404
print("Error \(status): \(mensaje)")

// Ignorar valores con _
let (soloStatus, _) = http404
```

### Casos de Uso Comunes

#### 1. Retornar múltiples valores de una función

```swift
func dividir(_ a: Int, entre b: Int) -> (cociente: Int, residuo: Int) {
    return (a / b, a % b)
}

let resultado = dividir(17, entre: 5)
print("17 ÷ 5 = \(resultado.cociente) resto \(resultado.residuo)")
// 17 ÷ 5 = 3 resto 2
```

#### 2. Intercambiar valores

```swift
var a = 10
var b = 20

// Swap con tuples (sin variable temporal)
(a, b) = (b, a)
// Ahora a = 20, b = 10

// Swift también tiene swap()
swap(&a, &b)
```

#### 3. Iterar con índice (enumerated)

```swift
let frutas = ["🍎", "🍌", "🍊"]

for (indice, fruta) in frutas.enumerated() {
    print("\(indice): \(fruta)")
}
```

#### 4. Comparación de tuples

```swift
// Las tuples se comparan elemento por elemento (de izquierda a derecha)
(1, "zebra") < (2, "apple")   // true (1 < 2)
(3, "apple") < (3, "bird")    // true ("apple" < "bird")
(4, "dog") == (4, "dog")      // true

// ⚠️ Solo funciona con tuples de hasta 6 elementos comparables
```

### Limitaciones de las Tuples

- No pueden conformar protocolos
- No son adecuadas para estructuras de datos complejas
- Máximo 6 elementos para comparación automática
- Para datos persistentes o complejos, usa `struct`

```swift
// ❌ Tuple para datos complejos (difícil de mantener)
let producto = ("iPhone 15", 999.99, true, "Electrónica", 128, "Negro")

// ✅ Mejor usar struct
struct Producto {
    let nombre: String
    let precio: Double
    let disponible: Bool
    let categoria: String
    let almacenamiento: Int
    let color: String
}
```

---

## Type Aliases: Nombres Personalizados

Un `typealias` define un nombre alternativo para un tipo existente. Mejora la legibilidad y documentación del código.

### Sintaxis Básica

```swift
// Alias para tipos simples
typealias Kilogramos = Double
typealias Metros = Double
typealias Segundos = Double

let peso: Kilogramos = 75.5
let altura: Metros = 1.80
let tiempo: Segundos = 9.58

// El tipo subyacente sigue siendo el mismo
let suma: Double = peso + altura  // ✅ Compila (ambos son Double)
```

### Alias para Colecciones

```swift
// Más legible que [String: [String: Any]]
typealias JSONObject = [String: Any]
typealias JSONArray = [JSONObject]

func parsearRespuesta(_ json: JSONObject) -> Usuario? {
    // ...
}

// Alias para arrays específicos
typealias ListaDePrecios = [Double]
typealias MatrizEnteros = [[Int]]
```

### Alias para Closures

```swift
// Sin alias (difícil de leer)
func ejecutar(completion: (Bool, String?, Error?) -> Void) { }

// Con alias (mucho más claro)
typealias CompletionHandler = (Bool, String?, Error?) -> Void

func ejecutar(completion: CompletionHandler) { }

// Más ejemplos
typealias VoidHandler = () -> Void
typealias StringTransform = (String) -> String
typealias Comparador<T> = (T, T) -> Bool
```

### Alias para Tuples

```swift
typealias Coordenada = (latitud: Double, longitud: Double)
typealias HTTPResponse = (code: Int, message: String, data: Data?)

func obtenerUbicacion() -> Coordenada {
    return (latitud: 40.4168, longitud: -3.7038)
}

let ubicacion = obtenerUbicacion()
print("Lat: \(ubicacion.latitud), Lon: \(ubicacion.longitud)")
```

### Cuándo Usar Type Aliases

| Situación | Ejemplo |
|-----------|---------|
| Clarificar propósito | `typealias UserID = String` |
| Simplificar tipos complejos | `typealias Handler = (Result<Data, Error>) -> Void` |
| Documentar unidades | `typealias Celsius = Double` |
| Migración de código | Cambiar el tipo subyacente en un solo lugar |

---

## Eligiendo la Colección Correcta

### Árbol de Decisión

```
¿Necesitas almacenar múltiples valores?
│
├─ Sí → ¿Los valores tienen claves asociadas?
│       │
│       ├─ Sí → Dictionary
│       │
│       └─ No → ¿Necesitas valores únicos?
│               │
│               ├─ Sí → Set
│               │
│               └─ No → ¿El orden importa?
│                       │
│                       ├─ Sí → Array
│                       │
│                       └─ No → Set (más eficiente para búsquedas)
│
└─ No → ¿Son pocos valores de tipos diferentes?
        │
        ├─ Sí → Tuple
        │
        └─ No → Valor simple o Struct
```

### Comparación de Rendimiento

| Operación | Array | Set | Dictionary |
|-----------|-------|-----|------------|
| Acceso por índice | O(1) | N/A | N/A |
| Acceso por clave | N/A | N/A | O(1) |
| Buscar elemento | O(n) | O(1) | O(1) |
| Insertar al final | O(1)* | O(1)* | O(1)* |
| Insertar en medio | O(n) | N/A | N/A |
| Eliminar | O(n) | O(1) | O(1) |

*Amortizado

### Ejemplos de Elección

```swift
// ARRAY: lista de tareas (orden importa, pueden repetirse)
var tareas = ["Comprar leche", "Estudiar Swift", "Comprar leche"]

// SET: etiquetas de un post (únicas, orden no importa)
var tags: Set = ["swift", "ios", "programacion"]

// DICTIONARY: configuración de usuario (pares clave-valor)
var config = ["tema": "oscuro", "idioma": "es", "notificaciones": "on"]

// TUPLE: coordenadas (valores fijos relacionados)
let ubicacion = (lat: 40.4168, lon: -3.7038)
```

---

## Operaciones Avanzadas con Colecciones

### Higher-Order Functions

Swift proporciona funciones poderosas para transformar colecciones:

#### `map`: Transformar cada elemento

```swift
let numeros = [1, 2, 3, 4, 5]

// Duplicar cada número
let duplicados = numeros.map { $0 * 2 }  // [2, 4, 6, 8, 10]

// Convertir a strings
let strings = numeros.map { "Número \($0)" }
// ["Número 1", "Número 2", ...]

// En diccionarios
let precios = ["A": 10, "B": 20]
let conDescuento = precios.mapValues { $0 * 0.9 }  // ["A": 9.0, "B": 18.0]
```

#### `filter`: Seleccionar elementos

```swift
let edades = [15, 22, 17, 30, 19, 16, 25]

// Solo mayores de edad
let adultos = edades.filter { $0 >= 18 }  // [22, 30, 19, 25]

// Filtrar diccionario
let productos = ["iPhone": 999, "Case": 29, "AirPods": 249]
let caros = productos.filter { $0.value > 100 }  // ["iPhone": 999, "AirPods": 249]
```

#### `reduce`: Combinar en un solo valor

```swift
let numeros = [1, 2, 3, 4, 5]

// Suma
let suma = numeros.reduce(0) { $0 + $1 }  // 15
let sumaCorta = numeros.reduce(0, +)      // 15

// Concatenar strings
let palabras = ["Hola", " ", "Mundo"]
let frase = palabras.reduce("") { $0 + $1 }  // "Hola Mundo"

// Contar caracteres totales
let caracteres = palabras.reduce(0) { $0 + $1.count }  // 10
```

#### `compactMap`: Transformar y eliminar nils

```swift
let stringsOpcionales = ["1", "dos", "3", "cuatro", "5"]

// Convertir a Int, descartando los que fallan
let enteros = stringsOpcionales.compactMap { Int($0) }  // [1, 3, 5]

// Equivalente manual
let enterosManual = stringsOpcionales.map { Int($0) }.filter { $0 != nil }.map { $0! }
```

#### `flatMap`: Aplanar colecciones anidadas

```swift
let anidado = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]

// Aplanar a un solo array
let plano = anidado.flatMap { $0 }  // [1, 2, 3, 4, 5, 6, 7, 8, 9]

// Combinar con transformación
let duplicadosPlanos = anidado.flatMap { $0.map { $0 * 2 } }
// [2, 4, 6, 8, 10, 12, 14, 16, 18]
```

### Encadenar Operaciones

```swift
struct Usuario {
    let nombre: String
    let edad: Int
    let activo: Bool
}

let usuarios = [
    Usuario(nombre: "Ana", edad: 28, activo: true),
    Usuario(nombre: "Carlos", edad: 17, activo: true),
    Usuario(nombre: "María", edad: 35, activo: false),
    Usuario(nombre: "Pedro", edad: 22, activo: true)
]

// Obtener nombres de usuarios activos mayores de edad, ordenados
let nombresValidos = usuarios
    .filter { $0.activo && $0.edad >= 18 }  // Activos y mayores
    .map { $0.nombre }                       // Solo nombres
    .sorted()                                // Ordenar
// ["Ana", "Pedro"]

// Suma de edades de usuarios activos
let sumaEdades = usuarios
    .filter { $0.activo }
    .map { $0.edad }
    .reduce(0, +)
// 67
```

### Lazy Collections

Para colecciones grandes, `lazy` evita crear arrays intermedios:

```swift
let numeros = Array(1...1_000_000)

// Sin lazy: crea 2 arrays intermedios
let resultadoNormal = numeros
    .map { $0 * 2 }
    .filter { $0 > 1_000_000 }
    .prefix(5)

// Con lazy: procesa elemento por elemento
let resultadoLazy = numeros.lazy
    .map { $0 * 2 }
    .filter { $0 > 1_000_000 }
    .prefix(5)

// Convertir a array cuando necesites el resultado
let arrayFinal = Array(resultadoLazy)
```

---

## Patrones Comunes y Best Practices

### 1. Inicialización Segura

```swift
// ✅ Crear array desde opcional con coalescencia
let datosOpcionales: [String]? = nil
let datos = datosOpcionales ?? []

// ✅ Diccionario con valor por defecto
var contadores: [String: Int] = [:]
contadores["visitas", default: 0] += 1  // No necesitas verificar si existe
```

### 2. Evitar Force Unwrap en Colecciones

```swift
let numeros = [1, 2, 3]

// ❌ Peligroso
// let primero = numeros[0]  // Crash si está vacío

// ✅ Seguro
if let primero = numeros.first {
    print(primero)
}

// ✅ O con valor por defecto
let primero = numeros.first ?? 0
```

### 3. Mutabilidad Mínima

```swift
// ❌ Crear y luego mutar
var resultado: [Int] = []
for num in numeros {
    if num > 5 {
        resultado.append(num)
    }
}

// ✅ Usar métodos funcionales (inmutable)
let resultado = numeros.filter { $0 > 5 }
```

### 4. Elegir el Tipo Correcto

```swift
// ❌ Array cuando necesitas búsqueda rápida
let usuariosArray = ["ana", "carlos", "maria", "pedro", "ana"]
usuariosArray.contains("maria")  // O(n)

// ✅ Set para búsqueda rápida
let usuariosSet: Set = ["ana", "carlos", "maria", "pedro"]
usuariosSet.contains("maria")    // O(1)
```

### 5. Agrupar Datos Relacionados

```swift
// ❌ Arrays paralelos (difícil de mantener)
let nombres = ["Ana", "Carlos", "María"]
let edades = [28, 35, 22]
let ciudades = ["Madrid", "Barcelona", "Sevilla"]

// ✅ Array de estructuras (o tuples para casos simples)
struct Persona {
    let nombre: String
    let edad: Int
    let ciudad: String
}

let personas = [
    Persona(nombre: "Ana", edad: 28, ciudad: "Madrid"),
    Persona(nombre: "Carlos", edad: 35, ciudad: "Barcelona"),
    Persona(nombre: "María", edad: 22, ciudad: "Sevilla")
]
```

---

## Errores Comunes de Principiantes

### 1. Index Out of Range

```swift
let colores = ["Rojo", "Verde", "Azul"]

// ❌ CRASH: índice fuera de rango
// let cuarto = colores[3]

// ✅ Verificar antes
if colores.indices.contains(3) {
    let cuarto = colores[3]
}

// ✅ O usar acceso seguro
extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

let cuarto = colores[safe: 3]  // nil
```

### 2. Confundir Set con Array

```swift
// ❌ Esperar orden en Set
let numeros: Set = [3, 1, 4, 1, 5, 9, 2, 6]
for num in numeros {
    print(num)  // El orden NO es 3, 1, 4, 1, 5, 9, 2, 6
}

// ✅ Si necesitas orden, usa Array
let numerosOrdenados = numeros.sorted()
```

### 3. Modificar Colección Durante Iteración

```swift
var numeros = [1, 2, 3, 4, 5, 6]

// ❌ Modificar durante iteración (comportamiento indefinido)
// for (index, num) in numeros.enumerated() {
//     if num % 2 == 0 {
//         numeros.remove(at: index)  // Puede crashear
//     }
// }

// ✅ Usar filter
numeros = numeros.filter { $0 % 2 != 0 }  // [1, 3, 5]

// ✅ O iterar en reversa si necesitas índices
for index in numeros.indices.reversed() {
    if numeros[index] % 2 == 0 {
        numeros.remove(at: index)
    }
}
```

### 4. Olvidar que Dictionary Retorna Optional

```swift
let config = ["tema": "oscuro"]

// ❌ Asumir que existe
// let tema: String = config["tema"]  // Error: es Optional

// ✅ Manejar el Optional
let tema = config["tema"] ?? "claro"

// ✅ O con if let
if let tema = config["tema"] {
    print("Tema: \(tema)")
}
```

### 5. Usar Any en Lugar de Tipos Específicos

```swift
// ❌ Perder type safety
var datos: [String: Any] = [
    "nombre": "Ana",
    "edad": 28
]
// Necesitas castear cada acceso
let edad = datos["edad"] as? Int ?? 0

// ✅ Usar struct tipada
struct Usuario {
    let nombre: String
    let edad: Int
}
let usuario = Usuario(nombre: "Ana", edad: 28)
// Acceso directo y type-safe
let edad = usuario.edad
```

---

## Mini-Ejercicios de Verificación

### Ejercicio 1: Operaciones con Arrays

```swift
// Dado este array:
var temperaturas = [22.5, 18.0, 25.3, 19.8, 23.1, 17.5, 26.0]

// 1. Obtén la temperatura máxima
// 2. Filtra las temperaturas mayores a 20 grados
// 3. Calcula el promedio
// 4. Convierte cada temperatura a Fahrenheit: F = C * 9/5 + 32

// Tu código aquí:
```

### Ejercicio 2: Trabajando con Sets

```swift
// Dados estos sets de estudiantes:
let matematicas: Set = ["Ana", "Carlos", "María", "Pedro", "Laura"]
let fisica: Set = ["Carlos", "María", "Juan", "Rosa"]
let quimica: Set = ["Ana", "María", "Juan", "Luis"]

// 1. ¿Quiénes están en las tres materias?
// 2. ¿Quiénes están solo en matemáticas?
// 3. ¿Cuántos estudiantes únicos hay en total?
// 4. ¿Carlos está en física?

// Tu código aquí:
```

### Ejercicio 3: Manipulando Dictionaries

```swift
// Dado este diccionario de inventario:
var inventario = [
    "Manzanas": 50,
    "Bananas": 30,
    "Naranjas": 25,
    "Peras": 40
]

// 1. Agrega "Uvas" con 35 unidades
// 2. Vende 10 manzanas (reduce el inventario)
// 3. Obtén un array con los productos que tienen menos de 35 unidades
// 4. Calcula el total de unidades en inventario

// Tu código aquí:
```

### Ejercicio 4: Encadenando Operaciones

```swift
// Dado este array de transacciones:
let transacciones = [
    ("Compra", 150.0),
    ("Venta", 200.0),
    ("Compra", 75.5),
    ("Devolución", -50.0),
    ("Venta", 300.0),
    ("Compra", 25.0)
]

// Calcula el total de las compras (solo tipo "Compra")
// usando filter, map y reduce

// Tu código aquí:
```

<details>
<summary>Ver respuestas</summary>

**Ejercicio 1:**
```swift
// 1. Temperatura máxima
let maxima = temperaturas.max()!  // 26.0

// 2. Mayores a 20
let calidas = temperaturas.filter { $0 > 20 }  // [22.5, 25.3, 23.1, 26.0]

// 3. Promedio
let promedio = temperaturas.reduce(0, +) / Double(temperaturas.count)  // 21.74...

// 4. Convertir a Fahrenheit
let fahrenheit = temperaturas.map { $0 * 9/5 + 32 }
// [72.5, 64.4, 77.54, 67.64, 73.58, 63.5, 78.8]
```

**Ejercicio 2:**
```swift
// 1. En las tres materias
let enTodas = matematicas.intersection(fisica).intersection(quimica)  // {"María"}

// 2. Solo en matemáticas
let soloMates = matematicas.subtracting(fisica).subtracting(quimica)  // {"Pedro", "Laura"}

// 3. Total de estudiantes únicos
let todos = matematicas.union(fisica).union(quimica)
let total = todos.count  // 8

// 4. ¿Carlos en física?
let carlosEnFisica = fisica.contains("Carlos")  // true
```

**Ejercicio 3:**
```swift
// 1. Agregar uvas
inventario["Uvas"] = 35

// 2. Vender manzanas
inventario["Manzanas", default: 0] -= 10  // Ahora es 40

// 3. Productos con menos de 35
let pocoStock = inventario.filter { $0.value < 35 }.map { $0.key }
// ["Bananas", "Naranjas"]

// 4. Total de unidades
let totalUnidades = inventario.values.reduce(0, +)  // 175
```

**Ejercicio 4:**
```swift
let totalCompras = transacciones
    .filter { $0.0 == "Compra" }
    .map { $0.1 }
    .reduce(0, +)
// 250.5
```

</details>

---

## Conexión con Temas Siguientes

Lo que aprendiste aquí es fundamental para todo lo que viene:

| Tema Siguiente | Conexión |
|----------------|----------|
| **Control de Flujo** | Iterarás sobre colecciones con `for-in`, usarás `switch` con patrones |
| **Funciones y Closures** | Pasarás colecciones como parámetros, usarás closures con `map`/`filter`/`reduce` |
| **Optionals** | Métodos como `.first`, `dictionary[key]` retornan Optionals |
| **Structs y Classes** | Crearás arrays de tus propios tipos personalizados |
| **Protocolos** | Entenderás `Hashable`, `Comparable`, `Sequence`, `Collection` |
| **Generics** | Las colecciones son el ejemplo perfecto de tipos genéricos |

### Próximo paso recomendado

Antes de avanzar a **Control de Flujo**, asegúrate de que puedes:

- [ ] Elegir la colección correcta para cada situación
- [ ] Realizar operaciones CRUD básicas en Arrays, Sets y Dictionaries
- [ ] Usar `map`, `filter` y `reduce` con confianza
- [ ] Manejar accesos seguros (evitar crashes por índices inválidos)
- [ ] Entender cuándo usar tuples vs structs

---

## Recursos Adicionales

### Documentación Oficial
- [Swift Collection Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes/)
- [Swift Standard Library - Collections](https://developer.apple.com/documentation/swift/collections)

### Artículos Recomendados
- [Swift by Sundell - Collections](https://www.swiftbysundell.com/basics/collections/)
- [Hacking with Swift - Arrays, Sets, Dictionaries](https://www.hackingwithswift.com/100/swiftui/3)

### Práctica Recomendada
1. Crea un Playground y experimenta con cada operación
2. Intenta resolver problemas usando diferentes colecciones
3. Practica encadenar `map`, `filter`, `reduce`
4. Experimenta con `lazy` en colecciones grandes

---

*Siguiente tema: [03 - Control de Flujo](../03-control-de-flujo/teoria-control-de-flujo.md)*
