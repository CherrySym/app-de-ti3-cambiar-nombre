# Aplicacion de Compras Sostenibles UCU — TI3 (Prototipo)

**Herramienta web para evaluar y comparar proveedores de papelería según criterios de sostenibilidad**

## Descripcion

El sitio web de compras es una herramienta dedicada del equipo de compras de la Universidad. Su estilo visual busca ser consistente con otras herramientas internas de la UCU como AutoGestion, WebAsignatura y la aplicación móvil.

## Estructura de Archivos

Los archivos HTML están organizados en dos carpetas principales según el tipo de usuario:

-   `vista-encargado/`: Contiene todas las páginas exclusivas para el personal de compras.
-   `vista-proveedor/`: Contiene las páginas para los proveedores externos.
-   Los archivos `index.html` y `login.html` permanecen en la raíz del prototipo, ya que son puntos de acceso comunes.

## Pantallas Principales

1.  **Pantalla de Inicio** (`index.html`)
    -   Página pública de bienvenida. Separa los flujos para encargados y proveedores.

2.  **Login** (`login.html`)
    -   Acceso para el equipo de compras. Para el prototipo, el acceso está hardcodeado.

3.  **Formulario de Postulación de Proveedores** (`vista-proveedor/postulacion.html`)
    -   Formulario público para que nuevos proveedores soliciten ser parte del sistema.

4.  **Formulario para Añadir Productos (Proveedor)** (`vista-proveedor/agregar-producto-proveedor.html`)
    -   Permite a un proveedor ya registrado (o en proceso) sugerir nuevos productos.

5.  **Landing Page del Encargado** (`vista-encargado/landing.html`)
    -   Dashboard principal para el encargado de compras tras iniciar sesión.

6.  **Listado de Proveedores** (`vista-encargado/lista-proveedores.html`)
    -   Muestra todos los proveedores activos en el sistema.

7.  **Detalle de Proveedor** (`vista-encargado/detalle-proveedor.html`)
    -   Vista con toda la información de un proveedor específico.

8.  **Agregar Proveedor (Encargado)** (`vista-encargado/agregar-proveedor.html`)
    -   Formulario para que el encargado registre un proveedor manualmente.

9.  **Agregar Producto (Encargado)** (`vista-encargado/agregar-producto-encargado.html`)
    -   Formulario para que el encargado añada productos directamente.

10. **Revisión de Postulaciones** (`vista-encargado/revision-postulaciones-totales.html`)
    -   Muestra una lista de todas las postulaciones de proveedores pendientes.
    -   **Vista Detallada:** `vista-encargado/revision-postulacion-unica.html`

11. **Revisión de Productos** (`vista -encargado/revision-productos-totales.html`)
    -   Muestra una lista de todos los productos sugeridos por proveedores que están pendientes de aprobación.
    -   **Vista Detallada:** `vista-encargado/revision-producto-unico.html`

12. **Ranking de Proveedores** (`vista-encargado/ranking.html`)
    -   Tabla comparativa de proveedores, ordenados por su puntaje de sostenibilidad.

13. **Catálogo Global de Productos** (`vista-encargado/lista-productos.html`)
    -   Muestra todos los productos aprobados de todos los proveedores.

14. **Simulador de Compras** (`vista-encargado/compras.html`)
    -   Herramienta para que el encargado arme un pedido simulado.

---

## Notas y Tareas Pendientes

### Tareas Críticas (Bloqueantes)

-   **Flujo de "Agregar Producto" para Proveedores:**
    -   **Problema:** El formulario `agregar-producto-proveedor.html` no tiene un campo para que el proveedor ingrese un código o identificador. Es imposible saber a quién pertenece el producto.
    -   **Próximo Paso:** Se debe añadir un campo "Código de Proveedor" en el formulario y actualizar la base de datos (`datosPlanos.js`) para incluir este código en cada proveedor.

### Planificación y Futuro

-   **Base de Datos:** Se planea migrar de `datosPlanos.js` a **Supabase** (PostgreSQL) para manejar la naturaleza relacional de los datos (proveedores, productos, certificaciones). Esto es una vez haber terminado todas las pantallas y con sus flujos funcionando perfectamente.
-   **Estilos:** Se considera usar una librería CSS en el futuro para mejorar la estética de la aplicación de forma más rápida.

### Ideas a Considerar

-   **Mejorar el Flujo del Proveedor en `index.html`:** Reemplazar el botón "Postularme" por un "Espacio de Proveedores" que ofrezca dos opciones claras: "Postularme por primera vez" y "Añadir nuevos productos (ya registrado)".

---

## Historial de Cambios Recientes (Auditoría)

-   **Arreglado:** Se corrigieron las rutas de navegación en `ranking.html`.
-   **Arreglado:** El flujo de postulación ahora se conecta con el de agregar productos. Se crearon vistas separadas para el encargado y el proveedor (`agregar-producto-encargado.html` y `agregar-producto-proveedor.html`).
-   **Arreglado:** Se eliminó un campo (`mat_reciclados_pct`) que se mostraba incorrectamente en `detalle-proveedor.html`.
-   **Implementado:** Se crearon las vistas detalladas `revision-postulacion-unica.html` y `revision-producto-unico.html` para mejorar la usabilidad del encargado al revisar pendientes (ambos archivos htlm estan vacios actualmente).
