# Aplicacion de Compras Sostenibles UCU — TI3

**Herramienta web para evaluar y comparar proveedores de papelería según criterios de sostenibilidad**

## Descripcion

El sitio web de compras es una herramienta dedicada del equipo de compras de la Universidad por eso el estilo de la misma tiene un parecido a las herrmientas usadas por la comunidad, AutoGestion, WebAsignatura, la aplicacion movil de la Universidad y la misma pagina principal de la UCU.

## Pantallas principales 

1. **Pantalla de Inicio** (index.html)
Página pública, sin login requerido. Es la entrada a la herramienta y separa a los dos tipos de usuario.

Contenido:

Flujo
Botón principal: "Soy encargado de compras → Ingresar" → redirige al Login
Botón secundario: "Soy proveedor → Postularme" → redirige al Formulario de Postulación

No tiene nav completo, solo la identidad visual de la UCU.

2. **Formulario de Postulación de Proveedores** (postulacion.html)
Pantalla pública. El propio proveedor completa su información para solicitar ser registrado en el sistema.
Los campos son idénticos al Formulario de Adición (pantalla 7).
Campos:

Datos de la empresa (nombre, contacto, email, teléfono, cobertura)
Certificaciones disponibles (checkboxes con las conocidas + campo para adicionales)
Adjuntar comprobantes en PDF
Prácticas sostenibles (embalaje, energía renovable, política de devolución)
Descripción comercial, desafíos y metas (opcionales)

Al enviar: la postulación queda en estado "pendiente" hasta ser revisada por el encargado (pantalla 8).

3. **Login** (login.html)
Pantalla de acceso para el equipo de compras de la UCU.
El registro de cuentas no está contemplado en la herramienta — el equipo de IT de la universidad se encarga de gestionar las credenciales del personal autorizado. El acceso es usando el usuario institucional y su contraseña.

Para el prototipo: usuario y contraseña hardcodeados, sin validación real.

4. **Landing** (landing.html)
Primera pantalla que ve el encargado tras autenticarse. Funciona como dashboard y punto de acceso al resto de la herramienta.
Contenido:

Saludo al usuario y ¿fecha actual?
Accesos directos a todas las secciones: Listado de Proveedores, Añadir Proveedor, Revisión de Postulaciones, Ranking, Listado de Productos
Acceso al archivo de detalles y pautas del sistema (el documento de protocolo de compras sostenibles)
Intentar ver 2 versiones una con nav y otra sin nav o con nav distinto al clasico

5. **Listado de Proveedores** (lista-de-proveedores.html)
Vista general de todos los proveedores registrados en el sistema. Es la pantalla de trabajo principal del encargado.
Contenido:

Grilla de tarjetas (cards), una por proveedor, con auto-fill según cantidad
Cada card muestra: nombre del proveedor y puntaje de sostenibilidad
Cada card es clickeable y lleva al Detalle del Proveedor (pantalla 6)
Botón "Ver Ranking" que redirige a la pantalla 9

6. **Detalle de Proveedor** (detalles-proveedor.html)
Información completa de un proveedor específico. Se accede desde el Listado (pantalla 5).
Contenido:

Datos generales: nombre, contacto, email, teléfono, cobertura, fecha de registro
Descripción comercial, desafíos y metas declaradas
Puntaje de sostenibilidad con indicador visual de color
Certificaciones registradas
Criterios de sostenibilidad: embalaje, energía renovable, política de devolución
Tabla de productos del proveedor con sus criterios individuales
Botón "Editar información" — el encargado puede modificar cualquier campo, en especial agregar certificaciones obtenidas después del registro inicial
Botón "Eliminar proveedor" — con confirmación antes de ejecutar

7. **Añadir Proveedor** (añadir-proveedor.html)
Formulario para que el encargado de compras registre manualmente un nuevo proveedor en la herramienta. A diferencia de la postulación (pantalla 2), acá el encargado valida y carga la información directamente.
Campos idénticos a la postulación. Al guardar, el proveedor aparece inmediatamente en el listado.

8. **Revisión de Postulaciones** (revision-Postulaciones.html)
Apartado exclusivo para el encargado. Muestra las postulaciones enviadas por proveedores (pantalla 2) que están en estado "pendiente".
Contenido:

Lista de postulaciones pendientes con nombre del proveedor y fecha de envío
Al seleccionar una: vista completa de los datos declarados por el proveedor
Visualización de los comprobantes PDF adjuntos
Botón "Aprobar" → el proveedor pasa al estado activo y aparece en el listado
Botón "Rechazar" → la postulación se descarta con opción de dejar un comentario

9. **Ranking de Proveedores** (ranking.html)
Vista comparativa de todos los proveedores ordenados por puntaje de sostenibilidad. Se accede desde el Listado de Proveedores (pantalla 5).
Contenido:

Tabla con todos los proveedores ordenados de mayor a menor puntaje
Columnas: nombre, puntaje (con colores de fondo), cobertura, acceso al detalle y acceso a productos
Filtro por puntaje mínimo
El sistema de cálculo del puntaje está pendiente — por ahora los valores están hardcodeados en datosPlanos.js

10. **Listado de Productos** (lista-productos.html)
Catálogo global de todos los productos de todos los proveedores registrados.
Contenido:

Tabla o grilla con todos los productos del sistema
Columnas: nombre del producto, proveedor, precio, categoría, reciclable, reutilizable, % materiales reciclados, certificaciones
Si dos proveedores distintos tienen un producto similar (ej: dos resmas A4), ambos aparecen como entradas separadas — la diferencia de precio y criterios es el valor de esta vista
Filtros: por proveedor, por categoría, por reciclable/reutilizable

## Pantallas adicionales

(Se construyen una vez que todas las principales estén terminadas y probadas)
11. **Apartado de Compras** (compras.html)
Permite al encargado armar un pedido simulado de productos.


Vista similar al Listado de Productos (pantalla 10)
Botón "Agregar al carrito" en cada producto con selector de cantidad
Panel lateral o página de resumen con el carrito armado
Botón "Confirmar pedido" que simula la compra (no hay cobro real, genera un resumen del pedido)


**Notas mias:** 
carpeta de assets para almacenar imagenes o elementos relevantes
SupraBase va a ser la nueva base de datos, el cambio de los productos con certificaciones necesita que la bd sea relacional, SupraBases PostSQL, sirve de igual manera que FireBase.
Implementar librearias CSS va a dejar la aplicacion mas bonita, es mas rapido pedirle a claude que perder tiempo decorando 

SOBRE LOS FORMS DE POSTULACION Y ADICION DE PROVEEDOR
Se hablo que seria mejor agregar los productos de los provedoores porque es mas facil aplicarles criterios a productos que a los proveedores en si. Tengo que revisar el documento para saber bien que criterios son.
Cada producto deberia tener cantidad precio y blablabla

**Notas Adicionales**

Sugerencia de info de proveedor por ia
- Nombre empresa
- Contacto (persona)
- Email
- Teléfono
- Certificaciones (checkboxes)
- % Materiales reciclados
- Embalaje sostenible (sí/no/parcial)
- Energía renovable (sí/no/parcial)
- Política de devolución (sí/no)
- Cobertura (local/importado/ambos)
- Descripción empresa (opcional)
- Desafíos sostenibilidad (opcional)
- Metas futuras (opcional)

