# URL PARA VER EL SITIOOOOOOOO

https://cherrysym.github.io/app-de-ti3-cambiar-nombre/

# Aplicacion de Compras Sostenibles UCU — TI3 (Prototipo)

**Herramienta web para evaluar y comparar proveedores de papelería según criterios de sostenibilidad**

## Descripcion

El sitio web de compras es una herramienta destinada al equipo de compras de la Universidad. Su estilo visual busca ser consistente con otras herramientas internas de la UCU como AutoGestion, WebAsignatura y la aplicación móvil.

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

## Notas y Cosas para Hacer

### 

Cuando este pronto el documento de los criterios:
- Agregar espacios de checlist Si/NO para ciertas cosas
- Mantener los espacios para adjuntar los archivos de las cerfiticaciones.

Mientras tanto:
- ¿Agregar esto a SupaBase...? 
- Mejorar todos los estilos porque se ve medio generico 
- FUSIONAR LSA PAGINAS DE LISTA DE PRODUCTOS Y COMPRAS - Meter en compras la parte de de busqueda y filtros que tiene lista de productos y despues borrar lista de productos. (LISTOOOO)
- En la parte de aprobacion de postulaciones añadir un nuevo coso/algo/bloque de texto lindo para darle un puntaje al proveeodr, 100% manual porqe es un bolaso hacer calculos lol. 
Ademas en la parte de detallles-proveedor poder editar el puntaje (y toda la info con el boton de editar informacion)
- Idea: Agregar un bloque aparte fijado en la pantalla en revision-postulacion-unica para que el encargado pueda ir al documenot de Criterios o la tabla de criterios o info releveante, que este moviendose al subir y bajar en la pagina, para que nunca se pierda de la vision del encargado.