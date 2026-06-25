-- ========================================================
-- SCRIPT DE RESET Y DATOS SEMILLA (SEED) 
-- ========================================================

-- 1. LIMPIEZA TOTAL (El botón de RESET para las pruebas)
truncate table proveedores_ucu cascade;

-- Reiniciar las secuencias correlativas para que arranquen de 1 de nuevo
alter sequence seq_codigo_proveedor restart with 1;
alter sequence seq_codigo_producto restart with 1;


-- 2. INSERCIÓN DE DATOS SEMILLA
do $$
declare
  id_prov_oficenter uuid;
  id_prov_ecopapel uuid;
  id_prov_caribe uuid;
begin

  -- ====================================================================================
  -- INSTANCIA 1: Postulación Pendiente (Para probar el panel del Encargado y la asignación manual)
  -- ====================================================================================
  insert into proveedores_ucu (
    tipo, estado, nombre, descripcion, rut, es_mayorista, sitio_web, email, telefono,
    tiene_iso14001, tiene_fsc, tiene_emas, embalaje_sostenible, urls_certificaciones, puntaje_total
  ) values (
    'postulacion', 'pendiente', 'OfiCenter Uruguay', 
    'Distribuidora mayorista de artículos de papelería e insumos para oficinas.',
    '219999990015', true, 'https://oficenter.com.uy', 'ventas@oficenter.com.uy', '099123456',
    true, true, false, false, 
    array['https://supabase.storage/certificados/oficenter_iso.pdf', 'https://supabase.storage/certificados/oficenter_fsc.pdf'],
    null -- Sin puntaje aún, requiere evaluación manual
  ) returning id into id_prov_oficenter;

  -- Productos de OfiCenter (Pendiente)
  insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable)
  values (id_prov_oficenter, 'Resma Papel A4 Fotocopia 75g', 'papel', 240.00, 0, true, false);
  
  insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable)
  values (id_prov_oficenter, 'Marcadores Pizarra Azul x4', 'escritura', 180.00, 20, true, true);


  -- ====================================================================================
  -- INSTANCIA 2: Proveedor Aprobado (Para poblar compras.html y probar filtros de ciclo de vida)
  -- ====================================================================================
  insert into proveedores_ucu (
    tipo, estado, nombre, descripcion, rut, es_mayorista, sitio_web, email, telefono,
    tiene_iso14001, tiene_fsc, tiene_emas, embalaje_sostenible, urls_certificaciones, puntaje_total
  ) values (
    'proveedor', 'aprobada', 'EcoPapel S.A.', 
    'Fábrica nacional de cuadernos y resmas utilizando procesos 100% ecológicos.',
    '218888880012', true, 'https://ecopapel.uy', 'contacto@ecopapel.uy', '29001122',
    true, true, true, true, 
    array['https://supabase.storage/certificados/ecopapel_emas.pdf'],
    95.00
  ) returning id into id_prov_ecopapel;

  -- Productos de EcoPapel (Aprobado - Aparecen en la tienda)
  insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable)
  values (id_prov_ecopapel, 'Cuaderno Universitario Eco 100 hojas', 'archivo', 150.00, 100, true, true);

  insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable)
  values (id_prov_ecopapel, 'Resma Reciclada A4 Oficio', 'papel', 290.00, 85, true, false);


  -- ====================================================================================
  -- INSTANCIA 3: Postulación Rechazada (Para probar vistas de desestimados o históricos)
  -- ====================================================================================
  insert into proveedores_ucu (
    tipo, estado, nombre, descripcion, rut, es_mayorista, sitio_web, email, telefono,
    tiene_iso14001, tiene_fsc, tiene_emas, embalaje_sostenible, urls_certificaciones, puntaje_total
  ) values (
    'postulacion', 'rechazada', 'Papelería El Caribe', 
    'Kiosco y papelería minorista de barrio.',
    '120345670011', false, null, 'elcaribe@gmail.com', '094777888',
    false, false, false, false, 
    null,
    30.00
  ) returning id into id_prov_caribe;

  -- Productos de El Caribe (Rechazado)
  insert into productos_ucu (proveedor_id, nombre, categoria, precio, mat_reciclados_pct, es_reciclable, es_reusable)
  values (id_prov_caribe, 'Bolígrafo Trazo Fino Negro', 'escritura', 45.00, 0, false, false);

end $$;