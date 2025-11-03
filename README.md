# 💧 Cuidado Responsable del Agua

Aplicación de escritorio para **macOS**, desarrollada en **Objective-C** con **Cocoa (AppKit)**, enfocada en la **concientización y uso responsable del agua**.  
Permite registrar el consumo diario, visualizar estadísticas, recibir alertas y obtener recomendaciones ecológicas personalizadas.

---

## 🧠 Descripción del Proyecto
“Cuidado Responsable del Agua” es un proyecto que incentiva el uso sostenible del agua mediante una herramienta interactiva.
Al monitorizar y analizar el consumo, los usuarios pueden identificar patrones, reducir desperdicios y adoptar prácticas más responsables con el medio ambiente.

La aplicación fusiona programación orientada a objetos, desarrollo de UI para macOS y almacenamiento local de datos, uniendo habilidades de desarrollo software con la promoción de la sostenibilidad.

---

## 🧩 Tecnologías y Herramientas

- **Lenguaje:** Objective-C  
- **Entorno:** Xcode 15 o superior  
- **Framework:** Cocoa (AppKit)  
- **Compatibilidad:** macOS 13 Ventura o superior  
- **Persistencia de datos:** `NSUserDefaults`  
- **Control de versiones:** Git / GitHub  

---

## ⚙️ Funcionalidades Principales

- **Registro diario de consumo:** permite ingresar y guardar la cantidad de litros utilizados.
- **Gráficas dinámicas:** representación visual del consumo en barras actualizadas en tiempo real.
- **Alertas inteligentes:** notificaciones cuando el consumo excede o reduce respecto al límite diario.
- **Recomendaciones ecológicas:** consejos aleatorios para promover el ahorro del agua.
- **Reinicio de datos:** opción para limpiar el historial y comenzar nuevos registros.

---

## 🧭 Estructura General

📦 Proyecto01_CuidadoDelAgua
┣ 📂 Classes
┃ ┣ 📜 ViewController.h / .m
┃ ┣ 📜 Registro.h / .m
┃ ┗ 📜 GraficoBarrasView.h / .m
┣ 📂 Assets
┣ 📜 Info.plist
┣ 📜 main.m
┗ 📜 README.md

---

## 🖥️ Interfaz Gráfica

**Componentes principales:**
- `TextField consumo` → Ingreso de litros consumidos.
- `TextField límite` → Límite diario definido por el usuario.
- `Label consejo` → Muestra un consejo aleatorio.
- `Botones:`  
  - **Registrar:** guarda el consumo y actualiza la gráfica.  
  - **Consejo:** muestra una recomendación ecológica.  
  - **Reiniciar:** borra los registros anteriores.  
- `View de Gráficas:` muestra las barras de consumo en relación con el límite diario.

---

## 📈 Ejemplo de Uso

1. Introduce el **límite diario** y tu **consumo actual**.  
2. Presiona el ícono de **registrar** para añadir el dato y ver la barra correspondiente.  
3. Haz clic en **“Consejo importante”** para obtener una recomendación aleatoria.  
4. Si deseas comenzar de nuevo, selecciona **“Consultar de nuevo”** para reiniciar el historial.

---

## 🧮 Lógica Interna del Proyecto

- **Registro de consumo:** se almacena cada valor junto con la fecha actual.
- **Comparación automática:** analiza el consumo respecto al límite y el consumo anterior.
- **Alertas:** calcula porcentajes de ahorro o exceso e informa al usuario.
- **Persistencia:** guarda los datos localmente usando `NSUserDefaults`.
- **Gráficas:** genera barras proporcionales al consumo más alto mediante `NSRectFill`.

---

## 🧑‍💻 Equipo de Desarrollo

| Integrante | Número de Control |
|-------------|------------------|
| Aixa Viviana Tovar Vázquez | 2113060 |
| Axel Iván Vázquez Soto | 21130853 |
| Diego Jesús Hernández Aguilar | 21130596 |
| Sharon Michelle Mejía Cruz | 21130612 |

**Maestra:** Lina Ernestina Arias Hernández  
**Materia:** Desarrollo de Aplicaciones en iOS  
**Instituto:** Instituto Tecnológico de La Laguna  
**Fecha de entrega:** 02/11/2025 – Torreón, Coahuila

---

## 💬 Conclusiones

El proyecto demostró cómo la programación puede ser una herramienta para **la educación ambiental y la sostenibilidad**.  
Implementar conceptos de POO, persistencia y visualización gráfica permitió crear una aplicación práctica que promueve hábitos responsables en el uso del agua.

Cada integrante aportó al desarrollo técnico y conceptual, fortaleciendo la colaboración y el aprendizaje interdisciplinario.

---

## 🤖 IA Utilizada y Prompts Consultados

- **IA:** Gemini  
- **Prompts empleados:**
  - “¿Por qué los IBAction y IBOutlet no funcionan en mi app de macOS?”
  - “¿Cómo cambiar el tamaño de un botón en una aplicación de macOS?”
  - “La gráfica no me pinta, ¿dónde está el error y cómo puedo solucionarlo?”

---

## 📚 Referencias (APA 7)

- Universidad Autónoma de Baja California (UABC). (s.f.). *Ahorro de agua y su impacto en la sustentabilidad.* Gaceta UABC. Recuperado el 1 de noviembre de 2025, de https://gaceta.uabc.mx/notas/academia/ahorro-de-agua-y-su-impacto-en-la-sustentabilidad  
- Hydraleak. (s.f.). *Importancia de ahorrar agua, cómo conseguirlo.* Recuperado el 1 de noviembre de 2025, de https://hydraleak.com/importancia-de-ahorrar-agua-como-conseguirlo/  
- Apple Developer. (n.d.). *NSCalendar.Identifier.* Recuperado el 2 de noviembre de 2025, de https://developer.apple.com/documentation/foundation/nscalendar/identifier  
- Stack Overflow. (n.d.). *Is there any tool to generate object graph on iOS app runtime.* Recuperado el 2 de noviembre de 2025, de https://stackoverflow.com/questions/11540240/is-there-any-tool-to-generate-object-graph-on-ios-app-runtime  
- jpsim. (n.d.). *SourceKitten.* GitHub. Recuperado el 2 de noviembre de 2025, de https://github.com/jpsim/SourceKitten  
- Apple Developer. (n.d.). *draw(_:).* Recuperado el 2 de noviembre de 2025, de https://developer.apple.com/documentation/uikit/uiview/draw(_:)?language=objc  

---

## 🌱 Impacto Social

El ahorro de agua no solo es una necesidad ecológica, sino también una **responsabilidad ciudadana**.  
Mediante el uso de esta aplicación, cada usuario puede **convertir sus hábitos diarios en acciones medibles**, contribuyendo a un cambio sostenible a nivel individual y comunitario.

---
