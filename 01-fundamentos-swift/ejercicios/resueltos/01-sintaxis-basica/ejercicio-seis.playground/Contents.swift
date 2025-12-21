import Cocoa
// Estado inicial del jugador
var puntos = 100
var nivel = 1
var multiplicador = 1.0

// Ronda 1: El jugador gana 50 puntos base * multiplicador
// Tu código:
puntos = puntos + Int(50 * multiplicador)

print("Después de ronda 1: \(puntos) puntos")  // Debería ser 150

// Ronda 2: El jugador sube de nivel (nivel += 1) y el multiplicador aumenta 0.5
// Tu código:
nivel += 1
multiplicador += 0.5

print("Nivel: \(nivel), Multiplicador: \(multiplicador)")  // Nivel 2, Mult 1.5

// Ronda 3: El jugador gana 40 puntos base * multiplicador (recuerda convertir tipos)
// Tu código:
puntos = puntos + Int(40 * multiplicador)

print("Después de ronda 3: \(puntos) puntos")  // Debería ser 210

// Ronda 4: El jugador pierde 30 puntos (penalización fija, sin multiplicador)
// Tu código:
puntos = puntos - 30

print("Después de ronda 4: \(puntos) puntos")  // Debería ser 180

// Bonus: Calcula cuántos puntos necesita para llegar a 500
let puntosNecesarios = 500 - puntos // Tu código aquí
print("Necesitas \(puntosNecesarios) puntos más para llegar a 500")  // 320
