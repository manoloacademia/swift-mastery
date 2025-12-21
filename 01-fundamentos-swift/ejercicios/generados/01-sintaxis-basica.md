# Ejercicios: Sintaxis Básica de Swift

> **Instrucciones:** Resuelve cada ejercicio en un Playground de Xcode.  
> **Tiempo estimado total:** 45-60 minutos  
> **Nivel:** Principiante

---

## Ejercicio 1 ⭐

**Tema:** Declaración de variables y constantes  
**Dificultad:** Básico  
**Tiempo estimado:** 3 minutos

### Enunciado
Estás creando una app de perfil de usuario. Declara las siguientes propiedades usando `let` o `var` según corresponda:

1. El ID del usuario (nunca cambia una vez creado)
2. El nombre de usuario (el usuario puede cambiarlo)
3. La fecha de registro (se establece una vez)
4. El número de seguidores (cambia constantemente)
5. Si la cuenta está verificada (puede cambiar)

### Código Inicial
```swift
// Declara las variables/constantes aquí:

// 1. ID del usuario


// 2. Nombre de usuario


// 3. Fecha de registro


// 4. Número de seguidores


// 5. Cuenta verificada

```

### Tests de Verificación
```swift
// Después de declarar, estas operaciones deberían funcionar:
// nombreUsuario = "NuevoNombre"  // ✅ Debería compilar
// seguidores += 1                // ✅ Debería compilar
// idUsuario = "otro"             // ❌ NO debería compilar (es let)
```

<details>
<summary>💡 Hint</summary>
Pregúntate: "¿Este valor necesitará cambiar después de ser establecido?" Si la respuesta es no, usa `let`.
</details>

---

## Ejercicio 2 ⭐

**Tema:** Tipos de datos básicos  
**Dificultad:** Básico  
**Tiempo estimado:** 5 minutos

### Enunciado
Declara variables con los tipos correctos para representar:

1. La temperatura actual (puede tener decimales)
2. El número de pisos de un edificio
3. El nombre de una ciudad
4. Si está lloviendo
5. El precio de un producto (en dólares con centavos)
6. La cantidad de productos en inventario

### Código Inicial
```swift
// Declara con el tipo apropiado (puedes usar type inference o anotación explícita):

// 1. Temperatura (ejemplo: 23.5 grados)


// 2. Número de pisos (ejemplo: 15)


// 3. Nombre de ciudad (ejemplo: "Buenos Aires")


// 4. Está lloviendo (ejemplo: false)


// 5. Precio (ejemplo: 49.99)


// 6. Cantidad en inventario (ejemplo: 100)


// Imprime todos los valores para verificar
print("Temperatura: \(temperatura)")
// Continúa con los demás...
```

<details>
<summary>💡 Hint</summary>
Recuerda: `Int` para números enteros, `Double` para decimales, `String` para texto, `Bool` para verdadero/falso.
</details>

---

## Ejercicio 3 ⭐

**Tema:** Type Inference  
**Dificultad:** Básico  
**Tiempo estimado:** 3 minutos

### Enunciado
Para cada declaración, indica qué tipo infiere Swift. Luego verifica en un Playground usando `type(of:)`.

### Código Inicial
```swift
let a = 100
let b = 3.14159
let c = "Hola"
let d = true
let e = 10 + 5
let f = 10.0 + 5
let g = 10 / 3
let h = 10.0 / 3.0

// Verifica tus respuestas:
print("a es de tipo: \(type(of: a))")
print("b es de tipo: \(type(of: b))")
// Continúa...

// ESCRIBE TUS PREDICCIONES AQUÍ (antes de ejecutar):
// a: ???
// b: ???
// c: ???
// d: ???
// e: ???
// f: ???
// g: ???
// h: ???
```

<details>
<summary>💡 Hint</summary>
Presta especial atención a `e`, `f`, `g` y `h`. Cuando hay operaciones, Swift infiere basándose en los operandos. La división entre enteros da entero.
</details>

---

## Ejercicio 4 ⭐⭐

**Tema:** Conversión de tipos  
**Dificultad:** Intermedio  
**Tiempo estimado:** 5 minutos

### Enunciado
Tienes los siguientes datos de una tienda online. Necesitas calcular el total y mostrarlo formateado.

### Código Inicial
```swift
let cantidadProductos: Int = 3
let precioUnitario: Double = 29.99
let descuento: Int = 10  // porcentaje

// 1. Calcula el subtotal (cantidad * precio)
// PROBLEMA: No puedes multiplicar Int * Double directamente
// let subtotal = cantidadProductos * precioUnitario  // ❌ Error

// Tu código para calcular subtotal:


// 2. Calcula el descuento en dólares
// PROBLEMA: descuento es Int, necesitas convertir para operar con subtotal


// 3. Calcula el total final


// 4. Imprime el resultado formateado
// Debe mostrar: "Total: $XX.XX (ahorraste $Y.YY)"

```

### Tests de Verificación
```swift
// El resultado debería ser aproximadamente:
// subtotal ≈ 89.97
// ahorro ≈ 9.00 (10% de 89.97)
// total ≈ 80.97
```

<details>
<summary>💡 Hint</summary>
Usa `Double(cantidadProductos)` para convertir Int a Double. Para el descuento: `subtotal * Double(descuento) / 100.0`
</details>

---

## Ejercicio 5 ⭐⭐

**Tema:** String Interpolation  
**Dificultad:** Intermedio  
**Tiempo estimado:** 5 minutos

### Enunciado
Crea un generador de mensajes de bienvenida personalizado para una app.

### Código Inicial
```swift
let nombreUsuario = "María"
let edad = 28
let ciudad = "Madrid"
let esNuevoUsuario = true
let diasDesdeRegistro = 0

// 1. Crea un saludo que diga:
// "¡Hola, María! Bienvenida desde Madrid."
// (usa "Bienvenido" o "Bienvenida" - por ahora puedes asumir femenino)
let saludo = ""  // Tu código aquí


// 2. Crea un mensaje que incluya una expresión calculada:
// "El próximo año tendrás 29 años."
let mensajeEdad = ""  // Tu código aquí


// 3. Crea un mensaje condicional (sin usar if todavía):
// Si es nuevo usuario: "¡Gracias por unirte! Llevas 0 días con nosotros."
// Pista: Usa el operador ternario (condicion ? valorSiTrue : valorSiFalse)
let mensajeBienvenida = ""  // Tu código aquí


// 4. Crea un mensaje con texto en mayúsculas:
// "Usuario: MARÍA - Ciudad: MADRID"
let mensajeFormateado = ""  // Tu código aquí


// Imprime todos los mensajes
print(saludo)
print(mensajeEdad)
print(mensajeBienvenida)
print(mensajeFormateado)
```

<details>
<summary>💡 Hint</summary>
Para el punto 3, el operador ternario funciona así: `esNuevoUsuario ? "mensaje si nuevo" : "mensaje si no"`. Para el punto 4, usa `.uppercased()` dentro de la interpolación: `\(nombreUsuario.uppercased())`
</details>

---

## Ejercicio 6 ⭐⭐

**Tema:** Operadores aritméticos y de asignación  
**Dificultad:** Intermedio  
**Tiempo estimado:** 5 minutos

### Enunciado
Simula un juego simple donde el jugador gana y pierde puntos.

### Código Inicial
```swift
// Estado inicial del jugador
var puntos = 100
var nivel = 1
var multiplicador = 1.0

// Ronda 1: El jugador gana 50 puntos base * multiplicador
// Tu código:


print("Después de ronda 1: \(puntos) puntos")  // Debería ser 150

// Ronda 2: El jugador sube de nivel (nivel += 1) y el multiplicador aumenta 0.5
// Tu código:


print("Nivel: \(nivel), Multiplicador: \(multiplicador)")  // Nivel 2, Mult 1.5

// Ronda 3: El jugador gana 40 puntos base * multiplicador (recuerda convertir tipos)
// Tu código:


print("Después de ronda 3: \(puntos) puntos")  // Debería ser 210

// Ronda 4: El jugador pierde 30 puntos (penalización fija, sin multiplicador)
// Tu código:


print("Después de ronda 4: \(puntos) puntos")  // Debería ser 180

// Bonus: Calcula cuántos puntos necesita para llegar a 500
let puntosNecesarios = 0  // Tu código aquí
print("Necesitas \(puntosNecesarios) puntos más para llegar a 500")  // 320
```

<details>
<summary>💡 Hint</summary>
Para ronda 3, necesitas convertir el resultado a Int: `puntos += Int(40.0 * multiplicador)`. Recuerda usar `+=` y `-=` para modificar puntos.
</details>

---

## Ejercicio 7 ⭐⭐

**Tema:** Operadores de comparación y lógicos  
**Dificultad:** Intermedio  
**Tiempo estimado:** 5 minutos

### Enunciado
Implementa la lógica de validación para un formulario de registro.

### Código Inicial
```swift
// Datos del formulario
let edad = 17
let tieneEmail = true
let aceptoTerminos = true
let password = "abc123"
let longitudMinPassword = 8

// 1. Verifica si el usuario es mayor de edad (>= 18)
let esMayorDeEdad = false  // Tu código aquí


// 2. Verifica si el password tiene longitud suficiente
let passwordValido = false  // Tu código aquí


// 3. Verifica si el formulario está completo (tiene email Y acepto términos)
let formularioCompleto = false  // Tu código aquí


// 4. Verifica si puede registrarse:
//    (es mayor de edad Y password válido Y formulario completo)
//    O
//    (tiene email Y tiene autorización parental - simula con: edad >= 16)
let puedeRegistrarse = false  // Tu código aquí


// 5. Imprime un resumen
print("Mayor de edad: \(esMayorDeEdad)")
print("Password válido: \(passwordValido)")
print("Formulario completo: \(formularioCompleto)")
print("¿Puede registrarse?: \(puedeRegistrarse)")

// Con los datos dados, ¿cuál debería ser el resultado de puedeRegistrarse?
// Analiza paso a paso antes de ejecutar.
```

<details>
<summary>💡 Hint</summary>
Para comparar longitud de string: `password.count >= longitudMinPassword`. Para la lógica compleja del punto 4, usa paréntesis para agrupar: `(condicion1 && condicion2) || (condicion3 && condicion4)`
</details>

---

## Ejercicio 8 ⭐⭐⭐

**Tema:** Strings avanzado  
**Dificultad:** Avanzado  
**Tiempo estimado:** 8 minutos

### Enunciado
Crea un formateador de nombres para una app de contactos.

### Código Inicial
```swift
let nombre = "  juan carlos  "
let apellido = "García López"
let apodo = "juanca"

// 1. Limpia el nombre (quita espacios al inicio y final)
//    Pista: Busca el método que remueve whitespace
let nombreLimpio = ""  // Tu código


// 2. Capitaliza correctamente (primera letra mayúscula de cada palabra)
let nombreCapitalizado = ""  // Tu código


// 3. Crea las iniciales (primera letra del nombre + primera del apellido)
//    Resultado esperado: "JG"
let iniciales = ""  // Tu código


// 4. Crea el nombre de usuario sugerido:
//    primeras 3 letras del nombre + primeras 3 del apellido, todo en minúsculas
//    Resultado esperado: "juagar"
let usuarioSugerido = ""  // Tu código


// 5. Crea el nombre formal:
//    "Sr./Sra. [Apellido], [Nombre]"
//    Resultado esperado: "Sr./Sra. García López, Juan Carlos"
let nombreFormal = ""  // Tu código


// 6. Verifica si el apodo está contenido en el nombre
let apodoEnNombre = false  // Tu código


print("Nombre limpio: '\(nombreLimpio)'")
print("Capitalizado: '\(nombreCapitalizado)'")
print("Iniciales: \(iniciales)")
print("Usuario sugerido: \(usuarioSugerido)")
print("Nombre formal: \(nombreFormal)")
print("¿Apodo en nombre?: \(apodoEnNombre)")
```

<details>
<summary>💡 Hint</summary>

Métodos útiles:
- `.trimmingCharacters(in: .whitespaces)` para quitar espacios
- `.capitalized` para capitalizar
- `.prefix(3)` para obtener primeros 3 caracteres (devuelve Substring, convierte con `String()`)
- `.first` para obtener el primer carácter
- `.lowercased()` para minúsculas
- `.contains()` para verificar si contiene un substring
</details>

---

## Ejercicio 9 ⭐⭐⭐

**Tema:** Integración de conceptos  
**Dificultad:** Avanzado  
**Tiempo estimado:** 10 minutos

### Enunciado
Crea un mini sistema de facturación para un café.

### Código Inicial
```swift
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


// 2. Calcula el costo de extras


// 3. Calcula el subtotal general (cafés + extras)


// 4. Calcula la propina


// 5. Calcula el total final


// 6. Calcula cuántos items se ordenaron en total


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
Tu recibo formateado aquí
"""

print(recibo)
```

<details>
<summary>💡 Hint</summary>

Para el recibo, usa string multilínea con `"""`. Para alinear los números, por ahora no te preocupes por el espaciado perfecto. El cálculo de propina: `subtotal * Double(propinaPorcentaje) / 100.0`. Usa `.capitalized` para el nombre del cliente.
</details>

---

## Ejercicio 10 ⭐⭐⭐

**Tema:** Debugging y errores de compilación  
**Dificultad:** Avanzado  
**Tiempo estimado:** 8 minutos

### Enunciado
El siguiente código tiene 10 errores. Encuéntralos y corrígelos.

### Código con Errores
```swift
// Este código tiene 10 errores. Corrígelos todos.

Let nombre = "swift"

var Edad: int = 25

let precio = 99,99

var total: String = 100 + 50

let mensaje = 'Hola Mundo'

var contador = 10
contador = contador++

let resultado = 10 / 3.0

var activo: Bool
print(activo)

let texto = "El valor es: " + 42

let numero: Double = Int(3.14)
```

### Código Corregido
```swift
// Escribe aquí la versión corregida de cada línea:
// 1. Let → ???

// 2. int → ???

// 3. 99,99 → ???

// 4. var total: ??? = ???

// 5. 'Hola' → ???

// 6. contador++ → ???

// 7. Este podría no ser error, verifica el tipo de resultado

// 8. var activo: Bool = ???

// 9. "El valor es: " + 42 → ???

// 10. Int(3.14) asignado a Double → ???
```

<details>
<summary>💡 Ver todos los errores</summary>

1. `Let` → `let` (minúscula)
2. `int` → `Int` (mayúscula)
3. `99,99` → `99.99` (punto decimal, no coma)
4. No puedes asignar Int a String
5. Strings usan comillas dobles `"`, no simples `'`
6. Swift no tiene `++`, usa `+= 1`
7. Este sí es válido (resultado será Double 3.333...)
8. Debes inicializar antes de usar
9. No puedes concatenar String + Int directamente
10. `Int(3.14)` devuelve Int, no Double

</details>

---

## 🎯 Autoevaluación

Marca los conceptos que ya dominas:

- [ ] Sé cuándo usar `let` vs `var`
- [ ] Entiendo los tipos básicos (Int, Double, String, Bool)
- [ ] Puedo usar type inference correctamente
- [ ] Sé cuándo necesito anotación de tipo explícita
- [ ] Puedo convertir entre tipos (Int ↔ Double, etc.)
- [ ] Uso string interpolation fluidamente
- [ ] Entiendo los operadores aritméticos y de asignación
- [ ] Puedo usar operadores de comparación y lógicos
- [ ] Entiendo los errores del compilador relacionados con tipos

**Si marcaste 7 o más:** ¡Excelente! Estás listo para el siguiente tema.  
**Si marcaste menos de 7:** Repasa los conceptos que te faltan antes de continuar.

---

## Próximo Paso

Cuando hayas completado estos ejercicios, continúa con:
→ **[02 - Tipos y Colecciones](../02-tipos-y-colecciones/ejercicios.md)**

---

*Generado para Swift Mastery System*
