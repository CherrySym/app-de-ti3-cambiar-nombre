# Aplicacion de Compras Sostenibles UCU — TI3

**Herramienta web para evaluar y comparar proveedores de papelería según criterios de sostenibilidad**

Cosas en el repo: desarrollo de diseño hecho por ia de forma apresurada, desarrollo hecho por humano y readme con la descripcion del sitio y sus funcionalidades clave.

**Notas mias:** 
carpeta de assets para almacenar imagenes o elementos relevantes
FireBase va a ser la base de datos, tiene api integrada asi que se ahorra el back, revisiar cual es su limite se uso si tiene

## Descripcion

El sitio web de compras es una herramienta dedicada del equipo de compras de la Universidad por eso el estilo de la misma tiene un parecido a las herrmientas usadas por la comunidad, AutoGestion, WebAsignatura, la aplicacion movil de la Universidad y la misma pagina principal de la UCU.

## Pantallas principales 

1. **Login** - Identifico que al ser una herramienta dedicada al equipo de compras y estaria acoplada al ecosistema de la universidad el registro de cuentas no es necesario. El equipo de IT encargado del manejo de las cuentas de la comunidad se encargarian de que unicamente el equpo de compras pueda loguearse y hacer uso de la herramienta. 

El login seria utilizando el usuario institucional con su contraseña.

2. **Landing Page** - Pagina de acceso al resto de apartados y tal vez con algo mas que sea relevante.
Con explicaciones de uso? eeeee ni puta idea 

3. **Formulario de adicion de proveedores** - Apartado para registrar a un nuevo proovedor, su nombre, sus datos de empresa relevantes (despues saco info de alguien que haga administracion de empresas) y sus certificaciones (no lo hice lol).
Dos planes para la forma de aceptar registros.
    1 - Campos especificos para cada certificacion y un campo de certificaciones adicionales no listadas
    2 - Un solo campo para añadir todos
    emm no se cual estaria mejor, cualquiera
4. **Ranking** - Un ranking de los proveedores con sus puntajes (la forma de calcular el puntaje falta definirse) Mientas tanto los puntos de estan hardcodeados en datosPlanos.js

5. **Detalle de X proveedor** - Información específica de un proveedor ya añadido en la herramienta por el/los encargado/s. Se visualizan sus datos, sus certificaciones (con fecha de expiracion en caso de que sea relevante(no lo creo)), su puntaje actual y tal vez sus productos(probably). 
El usuario encargado de compras debe poder editar inforamcion del proveedor, seguramente toda, en especial poder añadir certificaciones que el proveedor haya conseguido luego de haber sido registrado / cambios de nombre y cosas relevantes.

6. **Listado de todos los proveedores** - No se si funcionaria mejor fusionar esta con el ranking o dejarla separados, si los separo sacara el ranking del nav y meteria este y desde aca se puede acceder al ranking. tiene sentido para mi.

7. **¿Hacer compras** - eeeeee si o no¿

## Pantallas adicionales

Estas pantallas no forman parte de lo basico para que la web cumpla su cometido, aportan funcionalidades utiles y mejoras a la herramienta. Se realizaran una vez terminadas las pantallas principales y con las pruebas correspondientes

1. **Formulario de adicion manual para proveedores** - Los proveedores que conozcan de la nueva propuesta de compras sostenibles y quieran formar parte de la red de proveedores de la universidad tendran un aparatado público para hacer una postulacion. 
Deberan añadir toda su infomacion empresarial pertinente junto a las certificaciones de las cuales disponga. La forma de añadir sus certifiaciones hace falta definir junto al formulario de la pantalla principal. No sera obligatorio cumplir con TODAS las certificaciones pero sera requisito añadir minimo una o que se haga un calculo previo de su puntaje para que cumpla un umbral minimo (a discutir)

La adicion de esta pantalla arraiga a una segunda:
2. **Aprobacion de postulaciones** - Apartado adicional para que el encargado revise las postulaciones hechas por los proveedores interesados y valide la informacion. En especial debe dar un ok a la/s certificacion/es que el proveedor haya subido. Evitaria que se tome como valido un archivo vacio o algo nada que ver.



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

