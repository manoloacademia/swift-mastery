import Cocoa

// Ejercicio 10: Proyecto integrador - Sistema de Biblioteca

// Typealias para mejor legibilidad
typealias LibroID = String
typealias UsuarioID = Int

// Estructura de datos inicial
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

// ========= FUNCIONES A IMPLEMENTAR =========

// 1. librosDisponibles() -> [LibroID]
// Retorna un array de IDs de libros que no están prestados

// 2. prestarLibro(libroID:usuarioID:) -> (Bool, String)
// Presta un libro si está disponible
// Valida que el libro exista, que el usuario exista, y que el libro no esté prestado
// Retorna (éxito, mensaje)

// 3. devolverLibro(libroID:) -> (Bool, String)
// Devuelve un libro que estaba prestado
// Valida que el libro esté actualmente prestado
// Retorna (éxito, mensaje)

// 4. recomendarLibros(usuarioID:) -> [String]
// Retorna títulos de libros disponibles que coincidan con los géneros preferidos del usuario

// 5. reporteUsuario(usuarioID:) -> String
// Genera un reporte completo del usuario con:
// - Nombre e ID
// - Libros que tiene prestados actualmente
// - Géneros preferidos
// - Recomendaciones de libros disponibles

// ========= PRUEBAS =========
// Después de implementar las funciones, pruébalas con estos casos:

// - Lista los libros disponibles
// - Presta "L002" a María (203)
// - Intenta prestar "L001" a María (debería fallar porque ya está prestado)
// - Devuelve "L001"
// - Genera recomendaciones para Ana (201)
// - Genera recomendaciones para Carlos (202)
// - Muestra el reporte de Ana
// - Muestra el reporte de Carlos
