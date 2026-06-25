/*

 ESTE ARCHIVO CORRE EN EL SITIO WEB DE SUPABASE NO EN MI MAQUINA LOCAL, ESTA ACA COMO
  REFERENCIA PARA SABER QUE COSAS TIENE LA BASE DE DATOS, QUE CORRE Y TODO LO RELACIONADO.
  
*/


-- 1. SECUENCIAS PARA AUTOGENERAR CÓDIGOS HUMANAMENTE LEGIBLES
-- Esto lleva la cuenta por nosotros (ej: 1, 2, 3...)
create sequence if not exists seq_codigo_proveedor start 1;
create sequence if not exists seq_codigo_producto start 1;

-- 2. TABLA PRINCIPAL: Proveedores y Postulaciones
create table proveedores_ucu (
  id uuid default gen_random_uuid() primary key,
  
  -- Genera autoincremental tipo 'PRV-0001' por defecto al insertar
  id_codigo text default 'PRV-' || to_char(nextval('seq_codigo_proveedor'), 'FM0000') unique not null, 
  
  tipo text not null check (tipo in ('proveedor', 'postulacion')),
  estado text default 'pendiente' check (estado in ('pendiente', 'aprobada', 'rechazada')),
  
  -- Identificación
  nombre text not null,
  descripcion text,
  fecha_registro date default current_date,

  -- Criterios Generales (15%) - Formulario
  rut text,                      
  es_mayorista boolean,          
  sitio_web text,                
  email text not null,           
  telefono text,                 

  -- Criterios Ambientales (50%) - La Checklist para el Encargado
  tiene_iso14001 boolean default false,
  tiene_fsc boolean default false,
  tiene_emas boolean default false,
  embalaje_sostenible boolean default false, 
  
  urls_certificaciones text[],   
  
  -- Puntuación (100% MANUAL, a criterio del encargado)
  puntaje_total numeric(5,2) check (puntaje_total between 0 and 100)
);

-- 3. TABLA SECUNDARIA: Catálogo de Productos
create table productos_ucu (
  id uuid default gen_random_uuid() primary key,
  proveedor_id uuid references proveedores_ucu(id) on delete cascade,
  
  -- Genera autoincremental tipo 'PRD-0001' al insertar
  codigo_producto text default 'PRD-' || to_char(nextval('seq_codigo_producto'), 'FM0000') unique not null,
  
  nombre text not null,
  categoria text,                          
  precio numeric(10, 2) not null, 

  -- Ciclo de Vida
  mat_reciclados_pct integer check (mat_reciclados_pct between 0 and 100),
  es_reciclable boolean default false,
  es_reusable boolean default false
);