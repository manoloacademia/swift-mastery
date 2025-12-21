import Cocoa

// Ejercicio 4: Sets básicos

// 1. Crea un Set con etiquetas para un post
var tagsPost1: Set<String> = ["swift", "ios", "programacion", "swift"]
// ¿Cuántos elementos tiene realmente?
print("Tags del post 1: \(tagsPost1.count)")  // 3 (elimina duplicados)

// 2. Crea otro Set para un segundo post
var tagsPost2: Set<String> = ["ios", "android", "mobile", "desarrollo"]

// 3. Agrega una nueva etiqueta al post 1
let (insertado, _) = tagsPost1.insert("apple")
print("¿Se insertó 'apple'?: \(insertado)")

// 4. Intenta agregar "swift" de nuevo
let (insertadoDuplicado, _) = tagsPost1.insert("swift")
print("¿Se insertó 'swift' duplicado?: \(insertadoDuplicado)")

// 5. Verifica si el post 1 contiene la etiqueta "ios"
print("¿Contiene 'ios'?: \(tagsPost1.contains("ios"))")

// 6. Elimina "programacion" del post 1
tagsPost1.remove("programacion")

print("\nTags finales del post 1: \(tagsPost1)")
