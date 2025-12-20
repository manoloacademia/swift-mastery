# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Descripción del Proyecto

**swift-mastery** es un repositorio de aprendizaje estructurado para dominar el desarrollo iOS con Swift. Está organizado en fases progresivas desde fundamentos hasta proyectos completos listos para portfolio.

## Estructura del Proyecto

### Fases de Aprendizaje

| Carpeta | Contenido |
|---------|-----------|
| `00-setup/` | Configuración de Xcode, Claude Code y recursos esenciales |
| `01-fundamentos-swift/` | Sintaxis, tipos, optionals, structs/classes, protocolos, generics, async/await |
| `02-swiftui/` | Vistas, layout, state/binding, navegación, animaciones, gestos |
| `03-uikit/` | ViewControllers, AutoLayout, TableViews, CollectionViews |
| `04-arquitectura/` | MVC, MVVM, Clean Architecture, Coordinator, Dependency Injection |
| `05-datos-y-persistencia/` | UserDefaults, FileSystem, Codable, Core Data, SwiftData, Keychain, CloudKit |
| `06-networking/` | URLSession, async/await networking, REST APIs, WebSockets |
| `07-frameworks-apple/` | Combine, CoreLocation, MapKit, Notifications, CoreAnimation, AVFoundation, HealthKit |
| `08-testing/` | Unit Testing, UI Testing, Mocking, TDD |
| `09-publicacion/` | Certificates, App Store Connect, TestFlight, App Review Guidelines |
| `10-proyectos-completos/` | Proyectos: Notas, Hábitos, Finanzas, Portfolio final |

### Estructura Interna de cada Fase

Cada fase sigue este patrón:
- `teoria/` - Conceptos teóricos organizados por tema
- `ejercicios/` - Subdividido en:
  - `generados/` - Ejercicios generados por Haiku
  - `resueltos/` - Código del estudiante
  - `revisados/` - Código con feedback
- `proyectos/` o `mini-proyectos/` - Aplicaciones prácticas

### Carpetas de Soporte

| Carpeta | Propósito |
|---------|-----------|
| `evaluaciones/` | Evaluaciones semanales, por fase y simulacros de entrevista |
| `recursos/` | Cheatsheets, flashcards y referencias rápidas |
| `scripts-claude/` | Scripts de automatización para generar ejercicios, revisar código, evaluar progreso y sesiones de mentoría |

## Build Commands

**Swift Package Manager:**
- `swift build` - Compilar proyecto
- `swift test` - Ejecutar tests
- `swift run` - Ejecutar (si aplica)

**Xcode:**
- `xcodebuild -scheme <SchemeName> build` - Compilar vía CLI
- `xcodebuild -scheme <SchemeName> test` - Tests vía CLI

## Flujo de Trabajo con Claude

1. **Generación de ejercicios**: Usar `scripts-claude/generador-ejercicios.sh`
2. **Revisión de código**: Usar `scripts-claude/revisor-codigo.sh`
3. **Evaluación de progreso**: Usar `scripts-claude/evaluador-progreso.sh`
4. **Sesiones de mentoría**: Usar `scripts-claude/mentor-sesion.sh`

## Convenciones

- Los ejercicios resueltos van en `ejercicios/resueltos/`
- El código revisado con feedback va en `ejercicios/revisados/`
- Cada mini-proyecto y proyecto debe ser autocontenido con su propio Package.swift o .xcodeproj
