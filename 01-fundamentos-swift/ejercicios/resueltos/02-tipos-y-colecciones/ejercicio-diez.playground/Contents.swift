import Cocoa

// Ejercicio 10: Proyecto integrador - Sistema de Biblioteca

// Typealias para mejor legibilidad
typealias LibroID = String
typealias UsuarioID = Int

// Estructura de datos
var catalogo: [LibroID: (titulo: String, autor: String, genero: String)] = [
    "L001": ("1984", "George Orwell", "Ficción"),
    "L002": ("El Quijote", "Cervantes", "Clásico"),
    "L003": ("Sapiens", "Yuval Harari", "Historia"),
    "L004": ("Swift Programming", "Apple Inc.", "Tecnología"),
    "L005": ("Cien años de soledad", "García Márquez", "Ficción")
]

var prestamos: [LibroID: UsuarioID] = [
    "L001": 201,
    "L004": 202
]

let usuarios: [UsuarioID: String] = [
    201: "Ana Torres",
    202: "Carlos Ruiz",
    203: "María López"
]

var generosPreferidos: [UsuarioID: Set<String>] = [
    201: ["Ficción", "Historia"],
    202: ["Tecnología", "Ficción"],
    203: ["Clásico", "Historia"]
]

// ========= FUNCIONES =========

// 1. Listar libros disponibles
func librosDisponibles() -> [LibroID] {
    return catalogo.keys.filter { !prestamos.keys.contains($0) }.sorted()
}

// 2. Prestar un libro
func prestarLibro(libroID: LibroID, usuarioID: UsuarioID) -> (Bool, String) {
    guard catalogo[libroID] != nil else {
        return (false, "✗ El libro no existe en el catálogo")
    }

    guard usuarios[usuarioID] != nil else {
        return (false, "✗ El usuario no existe")
    }

    guard prestamos[libroID] == nil else {
        return (false, "✗ El libro ya está prestado")
    }

    prestamos[libroID] = usuarioID
    return (true, "✓ Libro prestado exitosamente")
}

// 3. Devolver un libro
func devolverLibro(libroID: LibroID) -> (Bool, String) {
    guard prestamos[libroID] != nil else {
        return (false, "✗ El libro no está prestado")
    }

    prestamos.removeValue(forKey: libroID)
    return (true, "✓ Libro devuelto exitosamente")
}

// 4. Recomendar libros
func recomendarLibros(usuarioID: UsuarioID) -> [String] {
    guard let generosUsuario = generosPreferidos[usuarioID] else {
        return []
    }

    let disponibles = librosDisponibles()
    var recomendaciones: [String] = []

    for libroID in disponibles {
        if let libro = catalogo[libroID] {
            if generosUsuario.contains(libro.genero) {
                recomendaciones.append(libro.titulo)
            }
        }
    }

    return recomendaciones
}

// 5. Reporte de usuario
func reporteUsuario(usuarioID: UsuarioID) -> String {
    guard let nombre = usuarios[usuarioID] else {
        return "Usuario no encontrado"
    }

    var reporte = "========== REPORTE USUARIO ==========\n"
    reporte += "Nombre: \(nombre) (ID: \(usuarioID))\n"

    // Libros prestados
    let librosPrestados = prestamos.filter { $0.value == usuarioID }.keys
    if librosPrestados.isEmpty {
        reporte += "Libros prestados: Ninguno\n"
    } else {
        reporte += "Libros prestados:\n"
        for libroID in librosPrestados {
            if let libro = catalogo[libroID] {
                reporte += "  - \(libro.titulo)\n"
            }
        }
    }

    // Géneros preferidos
    if let generos = generosPreferidos[usuarioID] {
        reporte += "Géneros preferidos: \(generos.sorted().joined(separator: ", "))\n"
    }

    // Recomendaciones
    let recomendaciones = recomendarLibros(usuarioID: usuarioID)
    reporte += "Recomendaciones: \(recomendaciones.joined(separator: ", "))\n"

    return reporte
}

// ========= PRUEBAS =========

print("===== BIBLIOTECA SWIFT =====\n")

print("Libros disponibles: \(librosDisponibles())")

let (exitoPrestamo, mensajePrestamo) = prestarLibro(libroID: "L002", usuarioID: 203)
print("\nPrestar L002 a María: \(mensajePrestamo)")

let (exitoPrestamo2, mensajePrestamo2) = prestarLibro(libroID: "L001", usuarioID: 203)
print("Prestar L001 a María: \(mensajePrestamo2)")

let (exitoDevolucion, mensajeDevolucion) = devolverLibro(libroID: "L001")
print("\nDevolver L001: \(mensajeDevolucion)")

print("\nRecomendaciones para Ana (201): \(recomendarLibros(usuarioID: 201))")
print("Recomendaciones para Carlos (202): \(recomendarLibros(usuarioID: 202))")

print("\n" + reporteUsuario(usuarioID: 201))
print("\n" + reporteUsuario(usuarioID: 202))
