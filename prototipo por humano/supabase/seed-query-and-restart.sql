-- ========================================================
-- SCRIPT DE RESET Y DATOS SEMILLA (SEED) — UCU Compras Sostenibles
-- ========================================================

-- 1. LIMPIEZA TOTAL
truncate table productos_ucu cascade;
truncate table proveedores_ucu cascade;

alter sequence seq_codigo_proveedor restart with 1;
alter sequence seq_codigo_producto restart with 1;


-- 2. INSERCIÓN DE DATOS SEMILLA
do $$
declare
 id_ecopapel uuid;
 id_paperuy uuid;
 id_delsur uuid;
 id_oficenter uuid;
 id_caribe uuid;
begin

 -- ====================================================================================
 -- PROVEEDOR APROBADO 1: EcoPapel S.A.
 -- Tiene productos aprobados + 2 productos PENDIENTES de revisión
 -- ====================================================================================
 insert into proveedores_ucu (
 tipo, estado, nombre, contacto_persona, procedencia, descripcion,
 rut, es_mayorista, sitio_web, email, telefono,
 tiene_iso14001, tiene_emas, embalaje_sostenible,
 urls_certificaciones, puntaje_total
 ) values (
 'proveedor', 'aprobada', 'EcoPapel S.A.', 'Martina León', 'nacional',
 'Fábrica nacional de cuadernos y resmas utilizando procesos 100% ecológicos.',
 '218888880012', true, 'https://ecopapel.uy', 'contacto@ecopapel.uy', '29001122',
 true, true, true,
 array['https://supabase.storage/certificados/ecopapel_iso.pdf',
 'https://supabase.storage/certificados/ecopapel_fsc.pdf'],
 95.00
 ) returning id into id_ecopapel;

 -- Productos aprobados de EcoPapel (se añade columna tiene_fsc)
 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_ecopapel, 'Cuaderno Universitario Eco 100 hojas', 'archivo', 150.00, 100, true, true, true, 'aprobado');

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_ecopapel, 'Resma Reciclada A4 80g', 'papel', 290.00, 85, true, false, true, 'aprobado');

 -- Productos PENDIENTES enviados por EcoPapel después de ser aprobado
 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_ecopapel, 'Carpeta Cartón Reciclado A4', 'archivo', 95.00, 90, true, true, true, 'pendiente');

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_ecopapel, 'Bloc Notas Kraft 80 hojas', 'papel', 120.00, 75, true, false, true, 'pendiente');


 -- ====================================================================================
 -- PROVEEDOR APROBADO 2: PaperUY S.A.
 -- Tiene productos aprobados + 1 producto PENDIENTE de revisión
 -- ====================================================================================
 insert into proveedores_ucu (
 tipo, estado, nombre, contacto_persona, procedencia, descripcion,
 rut, es_mayorista, sitio_web, email, telefono,
 tiene_iso14001, tiene_emas, embalaje_sostenible,
 urls_certificaciones, puntaje_total
 ) values (
 'proveedor', 'aprobada', 'PaperUY S.A.', 'Rodrigo Bentancur', 'nacional',
 'Distribuidora nacional con más de 20 años en el mercado.',
 '219000001234', true, 'https://paperuy.com.uy', 'rbentancur@paperuy.com.uy', '29001234',
 true, false, false,
 array['https://supabase.storage/certificados/paperuy_iso.pdf'],
 66.00
 ) returning id into id_paperuy;

 -- Productos aprobados de PaperUY (se añade columna tiene_fsc)
 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_paperuy, 'Resma A4 75g Standard', 'papel', 245.00, 40, true, false, true, 'aprobado');

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_paperuy, 'Carpeta Plástica A4', 'archivo', 85.00, 0, false, true, false, 'aprobado');

 -- Producto PENDIENTE enviado por PaperUY
 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_paperuy, 'Set Bolígrafos Reciclados x6', 'escritura', 175.00, 50, true, false, false, 'pendiente');


 -- ====================================================================================
 -- PROVEEDOR APROBADO 3: Papelería del Sur
 -- Solo productos aprobados, ninguno pendiente
 -- ====================================================================================
 insert into proveedores_ucu (
 tipo, estado, nombre, contacto_persona, procedencia, descripcion,
 rut, es_mayorista, sitio_web, email, telefono,
 tiene_iso14001, tiene_emas, embalaje_sostenible,
 urls_certificaciones, puntaje_total
 ) values (
 'proveedor', 'aprobada', 'Papelería del Sur', 'Andrés Méndez', 'nacional',
 'Empresa familiar con base en Maldonado, fuerte compromiso con papel de origen responsable.',
 '217777770099', false, null, 'andres@papeleriasur.uy', '43321900',
 false, false, true,
 array['https://supabase.storage/certificados/delsur_fsc.pdf'],
 58.00
 ) returning id into id_delsur;

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_delsur, 'Cuaderno Espiral 80 hojas', 'papel', 155.00, 60, true, false, true, 'aprobado');

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_delsur, 'Caja Clips Metálicos x100', 'organización', 65.00, 90, true, true, false, 'aprobado');


 -- ====================================================================================
 -- POSTULACIÓN PENDIENTE: OfiCenter Uruguay
 -- Para testear revision-postulacion-unica
 -- ====================================================================================
 insert into proveedores_ucu (
 tipo, estado, nombre, contacto_persona, procedencia, descripcion,
 rut, es_mayorista, sitio_web, email, telefono,
 tiene_iso14001, tiene_emas, embalaje_sostenible,
 urls_certificaciones, puntaje_total
 ) values (
 'postulacion', 'pendiente', 'OfiCenter Uruguay', 'Raúl Méndez', 'nacional',
 'Distribuidora mayorista de artículos de papelería e insumos para oficinas.',
 '219999990015', true, 'https://oficenter.com.uy', 'ventas@oficenter.com.uy', '099123456',
 true, false, false,
 array['https://supabase.storage/certificados/oficenter_iso.pdf', 'https://supabase.storage/certificados/oficenter_fsc.pdf'],
 null
 ) returning id into id_oficenter;

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_oficenter, 'Resma Papel A4 Fotocopia 75g', 'papel', 240.00, 0, true, false, true, 'pendiente');

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_oficenter, 'Marcadores Pizarra Azul x4', 'escritura', 180.00, 20, true, true, false, 'pendiente');

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_oficenter, 'Tijeras Acero Inoxidable', 'organización', 95.00, 0, false, true, false, 'pendiente');


 -- ====================================================================================
 -- POSTULACIÓN RECHAZADA: Caribe Office International
 -- Para testear que los rechazados no aparecen en el listado activo
 -- ====================================================================================
 insert into proveedores_ucu (
 tipo, estado, nombre, contacto_persona, procedencia, descripcion,
 rut, es_mayorista, sitio_web, email, telefono,
 tiene_iso14001, tiene_emas, embalaje_sostenible,
 urls_certificaciones, puntaje_total
 ) values (
 'postulacion', 'rechazada', 'Caribe Office International', 'Mika Schaffer', 'internacional',
 'Distribuidora minorista regional con base fuera de Uruguay.',
 null, false, null, 'elcaribe@gmail.com', '094777888',
 false, false, false,
 null,
 null
 ) returning id into id_caribe;

 insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable, tiene_fsc, estado)
 values (id_caribe, 'Bolígrafo Trazo Fino Negro', 'escritura', 45.00, 0, false, false, false, 'rechazado');

end $$;