# 01 - Sintaxis Básica de Swift

> *"Swift está diseñado para ser el primer lenguaje de programación de cualquier persona, ya sea que estés en la escuela o explorando nuevos caminos profesionales."* — Apple

---

## 📚 Índice

1. [Introducción a Swift](#introducción-a-swift)
2. [Tu Primer Código Swift](#tu-primer-código-swift)
3. [Variables y Constantes](#variables-y-constantes)
4. [Tipos de Datos Básicos](#tipos-de-datos-básicos)
5. [Type Safety e Inferencia de Tipos](#type-safety-e-inferencia-de-tipos)
6. [Operadores Básicos](#operadores-básicos)
7. [Strings y String Interpolation](#strings-y-string-interpolation)
8. [Comentarios](#comentarios)
9. [Convenciones de Nombrado](#convenciones-de-nombrado)
10. [Errores Comunes de Principiantes](#errores-comunes-de-principiantes)
11. [Mini-Ejercicios de Verificación](#mini-ejercicios-de-verificación)
12. [Conexión con Temas Siguientes](#conexión-con-temas-siguientes)

---

## Introducción a Swift

Swift es un lenguaje de programación moderno creado por Apple en 2014. Está diseñado para ser:

- **Seguro:** El compilador te protege de errores comunes antes de ejecutar el código
- **Rápido:** Rendimiento comparable a C/C++
- **Expresivo:** Sintaxis clara y concisa que es fácil de leer

### ¿Por qué Swift?

| Característica | Beneficio |
|----------------|-----------|
| Type Safety | Detecta errores en tiempo de compilación, no en producción |
| Optionals | Manejo explícito de valores nulos (adiós null pointer exceptions) |
| Sintaxis moderna | Código más legible y mantenible |
| Interoperabilidad | Puede trabajar con código Objective-C existente |
| Open Source | Comunidad activa y desarrollo transparente |

---

## Tu Primer Código Swift

Abre un **Playground** en Xcode (File → New → Playground) y escribe:

```swift
print("¡Hola, Swift!")
```

**Observaciones importantes:**
- No necesitas punto y coma (`;`) al final de las líneas
- No necesitas una función `main()` — el código se ejecuta directamente
- `print()` es la función para mostrar output en consola

### Anatomía de una línea de Swift

```swift
print("Mensaje")
//│     │
//│     └── Argumento: el valor que pasas a la función
//└── Función: acción que quieres realizar
```

---

## Variables y Constantes

Esta es **la decisión más fundamental** que tomarás en Swift: ¿este valor cambiará o no?

### `let` — Constantes (Inmutables)

```swift
let nombre = "María"
let añoNacimiento = 1995
let pi = 3.14159

// Esto causará ERROR:
// nombre = "Juan"  // ❌ Cannot assign to value: 'nombre' is a 'let' constant
```

### `var` — Variables (Mutables)

```swift
var edad = 28
var saldo = 1500.50
var estaActivo = true

// Esto SÍ funciona:
edad = 29  // ✅ Puedo cambiar el valor
saldo = saldo + 100  // ✅ Ahora es 1600.50
```

### 🎯 Regla de Oro de Swift

> **Usa `let` por defecto. Solo usa `var` cuando realmente necesites cambiar el valor.**

Xcode incluso te advertirá si declaras una `var` que nunca modificas:

```swift
var mensaje = "Hola"  // ⚠️ Warning: Variable 'mensaje' was never mutated; consider changing to 'let'
```

### ¿Por qué favorecer inmutabilidad?

1. **Código más predecible:** Sabes que el valor no cambiará inesperadamente
2. **Thread safety:** Las constantes son seguras en código concurrente
3. **Optimización:** El compilador puede optimizar mejor las constantes
4. **Intención clara:** Documenta que el valor no debe cambiar

### Ejemplos del mundo real

```swift
// Datos que NUNCA cambian → let
let idUsuario = "usr_12345"           // ID asignado una vez
let fechaCreacion = Date()            // Timestamp de creación
let urlAPI = "https://api.miapp.com"  // Configuración fija

// Datos que SÍ cambian → var
var contadorVisitas = 0               // Se incrementa
var nombreUsuario = "Invitado"        // Usuario puede cambiar su nombre
var itemsEnCarrito: [String] = []     // Se agregan/quitan items
```

---

## Tipos de Datos Básicos

Swift tiene tipos de datos integrados para las necesidades más comunes:

### Números Enteros: `Int`

```swift
let edad: Int = 25
let temperatura = -5        // Type inference: Swift sabe que es Int
let poblacionMundial = 8_000_000_000  // Puedes usar _ como separador visual
```

**Nota:** `Int` es de 64 bits en dispositivos modernos (rango: -9 quintillones a +9 quintillones).

### Números Decimales: `Double` y `Float`

```swift
let precio: Double = 99.99
let pi = 3.14159            // Por defecto, decimales son Double
let coordenada: Float = 37.7749  // Float tiene menos precisión pero usa menos memoria

// Double: ~15 dígitos de precisión
// Float: ~6 dígitos de precisión
```

**Recomendación:** Usa `Double` por defecto. Solo usa `Float` si tienes restricciones específicas de memoria.

### Texto: `String`

```swift
let saludo = "Hola, mundo"
let emoji = "🚀"                    // Swift soporta Unicode completo
let multilinea = """
    Esta es una cadena
    que ocupa múltiples
    líneas de texto.
    """
let vacia = ""                      // String vacío
```

### Booleanos: `Bool`

```swift
let esMayorDeEdad = true
let tienePermiso = false
let estaLogueado: Bool = true

// Los booleanos son fundamentales para control de flujo
if esMayorDeEdad {
    print("Puede entrar")
}
```

### Caracteres: `Character`

```swift
let letra: Character = "A"
let simbolo: Character = "€"
let emoji: Character = "😀"

// Un String es una colección de Characters
let palabra = "Hola"
for caracter in palabra {
    print(caracter)  // H, o, l, a
}
```

### Tabla Resumen de Tipos

| Tipo | Descripción | Ejemplo | Caso de Uso |
|------|-------------|---------|-------------|
| `Int` | Entero | `42`, `-17` | Contadores, IDs, índices |
| `Double` | Decimal 64-bit | `3.14159` | Precios, coordenadas, cálculos |
| `Float` | Decimal 32-bit | `3.14` | Gráficos, cuando memoria es crítica |
| `String` | Texto | `"Hola"` | Nombres, mensajes, cualquier texto |
| `Bool` | Verdadero/Falso | `true`, `false` | Condiciones, estados |
| `Character` | Un solo carácter | `"A"` | Procesamiento de texto |

---

## Type Safety e Inferencia de Tipos

Swift es un lenguaje **fuertemente tipado** (type-safe), lo que significa que:

1. Cada valor tiene un tipo específico
2. No puedes mezclar tipos incompatibles accidentalmente
3. El compilador verifica los tipos antes de ejecutar

### Inferencia de Tipos (Type Inference)

Swift puede **deducir** el tipo basándose en el valor inicial:

```swift
let mensaje = "Hola"     // Swift infiere: String
let cantidad = 42        // Swift infiere: Int
let precio = 19.99       // Swift infiere: Double
let activo = true        // Swift infiere: Bool
```

### Anotación Explícita de Tipos (Type Annotation)

Puedes declarar el tipo explícitamente:

```swift
let mensaje: String = "Hola"
let cantidad: Int = 42
let precio: Double = 19.99
let temperatura: Float = 23.5
```

### ¿Cuándo usar anotación explícita?

```swift
// 1. Cuando quieres un tipo diferente al inferido
let pequeño: Float = 3.14  // Sin anotación sería Double

// 2. Cuando declaras sin valor inicial
let nombre: String  // Declaración
nombre = "Ana"      // Asignación posterior (solo funciona con let si es una sola vez)

// 3. Para claridad en código complejo
let respuestaAPI: [String: Any] = obtenerDatos()

// 4. Cuando el contexto no es obvio
let codigo: Int = 0  // ¿Es 0 un Int, Double, o código especial?
```

### Type Safety en Acción

```swift
let edad: Int = 25
let nombre: String = "Ana"

// ❌ ERROR: No puedes sumar Int + String
// let resultado = edad + nombre  // Binary operator '+' cannot be applied to operands of type 'Int' and 'String'

// ✅ CORRECTO: Convierte explícitamente
let mensaje = nombre + " tiene " + String(edad) + " años"
// O mejor, usa string interpolation:
let mensajeMejor = "\(nombre) tiene \(edad) años"
```

### Conversión de Tipos

Swift **no convierte tipos automáticamente**. Debes ser explícito:

```swift
let entero: Int = 42
let decimal: Double = 3.14

// ❌ ERROR: No puedes operar directamente
// let suma = entero + decimal

// ✅ CORRECTO: Convierte uno de los dos
let suma1 = Double(entero) + decimal  // 45.14
let suma2 = entero + Int(decimal)     // 45 (trunca el decimal)
```

---

## Operadores Básicos

### Operadores Aritméticos

```swift
let a = 10
let b = 3

let suma = a + b        // 13
let resta = a - b       // 7
let multiplicacion = a * b  // 30
let division = a / b    // 3 (división entera)
let residuo = a % b     // 1 (módulo)

// Para división decimal, usa Double
let divisionReal = Double(a) / Double(b)  // 3.333...
```

### Operadores de Asignación

```swift
var contador = 0

contador = 5        // Asignación simple
contador += 1       // Equivale a: contador = contador + 1 → 6
contador -= 2       // Equivale a: contador = contador - 2 → 4
contador *= 3       // Equivale a: contador = contador * 3 → 12
contador /= 4       // Equivale a: contador = contador / 4 → 3
```

**Nota importante:** Swift **no tiene** `++` ni `--`. Usa `+= 1` o `-= 1`.

### Operadores de Comparación

```swift
let x = 5
let y = 10

x == y    // false (igualdad)
x != y    // true  (desigualdad)
x < y     // true  (menor que)
x > y     // false (mayor que)
x <= y    // true  (menor o igual)
x >= y    // false (mayor o igual)
```

### Operadores Lógicos

```swift
let sol = true
let calor = true
let lluvia = false

// AND: ambos deben ser true
sol && calor      // true

// OR: al menos uno debe ser true
sol || lluvia     // true

// NOT: invierte el valor
!lluvia          // true

// Combinaciones
(sol && calor) || lluvia  // true
```

---

## Strings y String Interpolation

### Creación de Strings

```swift
// String literal simple
let saludo = "Hola, mundo"

// String vacío
let vacio1 = ""
let vacio2 = String()

// String multilínea (preserva formato)
let poema = """
    Caminante, son tus huellas
    el camino y nada más;
    Caminante, no hay camino,
    se hace camino al andar.
    """
```

### String Interpolation

La forma más elegante de combinar strings y valores:

```swift
let nombre = "Carlos"
let edad = 30
let ciudad = "Madrid"

// ✅ String interpolation (la forma Swift)
let presentacion = "Me llamo \(nombre), tengo \(edad) años y vivo en \(ciudad)"

// También funciona con expresiones
let mensaje = "El próximo año tendré \(edad + 1) años"
let info = "Nombre en mayúsculas: \(nombre.uppercased())"
```

### Operaciones Comunes con Strings

```swift
var texto = "Hola Swift"

// Propiedades
texto.count           // 10 (número de caracteres)
texto.isEmpty         // false

// Métodos de transformación
texto.uppercased()    // "HOLA SWIFT"
texto.lowercased()    // "hola swift"
texto.capitalized     // "Hola Swift"

// Verificación
texto.hasPrefix("Hola")   // true
texto.hasSuffix("Swift")  // true
texto.contains("a")       // true

// Concatenación
let completo = texto + " es genial"  // "Hola Swift es genial"
texto += "!"                          // "Hola Swift!"
```

### Caracteres Especiales

```swift
let conComillas = "Ella dijo: \"Hola\""     // Escape con \
let conSaltoLinea = "Línea 1\nLínea 2"      // \n = nueva línea
let conTab = "Columna1\tColumna2"            // \t = tabulador
let conBackslash = "Ruta: C:\\Users\\Ana"   // \\ = backslash literal
```

---

## Comentarios

Los comentarios son ignorados por el compilador. Sirven para documentar tu código.

### Comentario de una línea

```swift
// Esto es un comentario de una línea
let pi = 3.14159  // También puedes comentar al final de una línea
```

### Comentario multilínea

```swift
/*
   Este es un comentario
   que abarca múltiples
   líneas de texto.
*/
let radio = 5.0
```

### Comentarios anidados (característica única de Swift)

```swift
/* Este es el comentario exterior
   /* Este es un comentario anidado */
   Esto sigue siendo parte del comentario exterior
*/
```

**Útil para:** Comentar bloques grandes de código que ya tienen comentarios.

### Comentarios de documentación (Markup)

```swift
/// Calcula el área de un círculo.
/// - Parameter radio: El radio del círculo en metros.
/// - Returns: El área del círculo en metros cuadrados.
func areaCirculo(radio: Double) -> Double {
    return Double.pi * radio * radio
}
```

Estos comentarios aparecen en el **Quick Help** de Xcode (Option + Click sobre la función).

---

## Convenciones de Nombrado

Swift tiene convenciones claras que debes seguir para escribir código idiomático:

### camelCase para variables, constantes y funciones

```swift
// ✅ Correcto
let nombreCompleto = "Ana García"
var contadorDeClicks = 0
func calcularPrecioTotal() { }

// ❌ Incorrecto
let nombre_completo = "Ana García"  // snake_case no es Swift
let NombreCompleto = "Ana García"   // PascalCase es para tipos
let nombrecompleto = "Ana García"   // Difícil de leer
```

### PascalCase para tipos (structs, classes, enums, protocols)

```swift
// ✅ Correcto
struct Usuario { }
class CarritoDeCompras { }
enum EstadoPedido { }
protocol Descargable { }

// ❌ Incorrecto
struct usuario { }
class carrito_de_compras { }
```

### Nombres descriptivos

```swift
// ✅ Nombres claros y descriptivos
let velocidadMaximaEnKmH = 120
var estaAutenticado = false
func obtenerUsuarioPorId(_ id: String) { }

// ❌ Nombres vagos o abreviados
let v = 120           // ¿Qué es v?
var auth = false      // ¿Qué significa auth?
func get(_ i: String) { }  // Muy genérico
```

### Acrónimos

```swift
// Los acrónimos siguen camelCase normal
let urlDelServidor = "https://..."   // ✅ (no URLDelServidor)
let idDeUsuario = "12345"            // ✅ (no IDDeUsuario)
var htmlContent = "<html>..."        // ✅

// Excepción: Al inicio de un tipo, el acrónimo va en mayúsculas
struct URLRequest { }  // API de Apple
class HTTPClient { }
```

---

## Errores Comunes de Principiantes

### 1. Usar `var` cuando debería ser `let`

```swift
// ❌ Malo: var que nunca cambia
var pi = 3.14159
var nombre = "Ana"

// ✅ Bueno: let para valores que no cambian
let pi = 3.14159
let nombre = "Ana"
```

### 2. Olvidar que Swift es case-sensitive

```swift
let nombre = "Ana"
let Nombre = "Juan"  // Son DOS variables diferentes

print(nombre)  // Ana
print(Nombre)  // Juan
```

### 3. Intentar operar tipos diferentes sin conversión

```swift
let cantidad: Int = 5
let precio: Double = 9.99

// ❌ Error de compilación
// let total = cantidad * precio

// ✅ Correcto
let total = Double(cantidad) * precio
```

### 4. Confundir `=` (asignación) con `==` (comparación)

```swift
var edad = 25

// ❌ Esto ASIGNA, no compara
// if edad = 18 { }  // Error en Swift (protección)

// ✅ Esto COMPARA
if edad == 18 {
    print("Tienes 18")
}
```

### 5. No inicializar variables antes de usarlas

```swift
// ❌ Error: usado antes de ser inicializado
var mensaje: String
// print(mensaje)  // Error de compilación

// ✅ Correcto: inicializar antes de usar
var mensaje: String
mensaje = "Hola"
print(mensaje)  // Funciona
```

### 6. Intentar modificar una constante

```swift
let maximoIntentos = 3

// ❌ Error: no puedes cambiar un let
// maximoIntentos = 5

// ✅ Si necesitas cambiar, usa var
var intentosRestantes = 3
intentosRestantes -= 1  // Ahora es 2
```

---

## Mini-Ejercicios de Verificación

Antes de continuar al siguiente tema, verifica tu comprensión:

### Ejercicio 1: Declaración correcta
```swift
// ¿Cuál es la forma correcta de declarar estas variables?
// 1. El nombre del usuario (no cambiará después de login)
// 2. El número de items en un carrito (cambia al agregar/quitar)
// 3. La URL de la API (constante de configuración)
// 4. El estado de conexión (puede cambiar)

// Tu respuesta:
// let nombreUsuario = ...
// var itemsEnCarrito = ...
// etc.
```

### Ejercicio 2: ¿Qué tipo infiere Swift?
```swift
// Determina el tipo que Swift infiere para cada declaración:
let a = 42          // Tipo: ???
let b = 3.14        // Tipo: ???
let c = "Swift"     // Tipo: ???
let d = true        // Tipo: ???
let e = 7 + 0.5     // Tipo: ???
```

### Ejercicio 3: String Interpolation
```swift
// Dado:
let producto = "iPhone"
let precio = 999.99
let cantidad = 2

// Crea un mensaje que diga:
// "Has comprado 2 unidades de iPhone por un total de $1999.98"
// Usa string interpolation
```

### Ejercicio 4: Encuentra el error
```swift
// Cada línea tiene un error. ¿Cuál es?

let 1numero = 10          // Error: ???
var nombre = "Ana"
nombre = 42               // Error: ???
let total: Int = 3.14     // Error: ???
```

<details>
<summary>Ver respuestas</summary>

**Ejercicio 1:**
```swift
let nombreUsuario = "Ana"           // let: no cambia después de login
var itemsEnCarrito = 0              // var: cambia constantemente
let urlAPI = "https://api.com"      // let: configuración fija
var estaConectado = true            // var: puede cambiar
```

**Ejercicio 2:**
- `a`: `Int`
- `b`: `Double`
- `c`: `String`
- `d`: `Bool`
- `e`: `Double` (cuando mezclas Int y Double en una expresión, el resultado es Double)

**Ejercicio 3:**
```swift
let mensaje = "Has comprado \(cantidad) unidades de \(producto) por un total de $\(Double(cantidad) * precio)"
```

**Ejercicio 4:**
- `1numero`: Los identificadores no pueden empezar con número
- `nombre = 42`: No puedes asignar Int a una variable String
- `total: Int = 3.14`: No puedes asignar Double a Int sin conversión explícita

</details>

---

## Conexión con Temas Siguientes

Lo que aprendiste aquí es la base para todo lo que viene:

| Tema Siguiente | Conexión |
|----------------|----------|
| **Tipos y Colecciones** | Usarás `let` y `var` para declarar Arrays, Sets y Dictionaries |
| **Control de Flujo** | Usarás `Bool` y operadores de comparación en condiciones `if`/`switch` |
| **Funciones** | Los parámetros y retornos tienen tipos específicos |
| **Optionals** | Verás `String?`, `Int?` — tipos que pueden ser `nil` |
| **Structs y Classes** | Definirás tus propios tipos con propiedades que son `let`/`var` |

### Próximo paso recomendado

Antes de avanzar a **Tipos y Colecciones**, asegúrate de que puedes:

- [ ] Decidir correctamente entre `let` y `var`
- [ ] Usar type inference y saber cuándo anotar tipos explícitamente
- [ ] Usar string interpolation fluidamente
- [ ] Entender por qué Swift no te deja mezclar tipos

---

## Recursos Adicionales

### Documentación Oficial
- [The Swift Programming Language (Apple)](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/)
- [Swift.org - Getting Started](https://www.swift.org/getting-started/)

### WWDC Sessions Recomendadas
- [What's new in Swift (anual)](https://developer.apple.com/videos/)
- [Swift Playgrounds para experimentar](https://developer.apple.com/swift-playgrounds/)

### Práctica
- Crea un Playground y experimenta con cada concepto
- Intenta romper cosas a propósito para ver los errores del compilador
- El compilador de Swift es tu amigo: sus mensajes de error son muy descriptivos

---

*Siguiente tema: [02 - Tipos y Colecciones](../02-tipos-y-colecciones/teoria.md)*
