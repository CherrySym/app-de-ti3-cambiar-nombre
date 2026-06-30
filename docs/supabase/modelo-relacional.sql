-- 0. LIMPIEZA DE TABLAS PREVIAS 
drop table if exists productos_ucu cascade;
drop table if exists proveedores_ucu cascade;
drop sequence if exists seq_codigo_proveedor;
drop sequence if exists seq_codigo_producto;

-- 1. SECUENCIAS
create sequence if not exists seq_codigo_proveedor start 1;
create sequence if not exists seq_codigo_producto start 1;

-- 2. TABLA PRINCIPAL: Proveedores y Postulaciones
create table proveedores_ucu (
 id uuid default gen_random_uuid() primary key,
 id_codigo text default 'PROV-' || to_char(nextval('seq_codigo_proveedor'), 'FM0000') unique not null, 
 tipo text not null check (tipo in ('proveedor', 'postulacion')),
 estado text default 'pendiente' check (estado in ('pendiente', 'aprobada', 'rechazada')),
 
 -- Identificación y Procedencia (Corregido char_length)
 nombre text not null check (char_length(nombre) <= 50),
 contacto_persona text not null check (char_length(contacto_persona) <= 45),
 sitio_web text check (char_length(sitio_web) <= 200), 
 email text not null check (char_length(email) <= 60), 
 telefono text check (char_length(telefono) <= 20), -- Cambiado a TEXT para evitar overflows y permitir +, espacios o guiones
 procedencia text not null check (procedencia in ('nacional', 'internacional')), 
 descripcion text check (char_length(descripcion) <= 1000), -- Corregido para que evalúe descripcion y no nombre
 fecha_registro date default current_date,

 -- Criterios Generales (15%)
 rut text check (char_length(rut) <= 30), 
 es_mayorista boolean, 
 
 -- Criterios Ambientales (50%)
 tiene_iso14001 boolean default false,
 tiene_emas boolean default false,
 embalaje_sostenible boolean default false, 
 urls_certificaciones text[], 
 
 -- Puntuación
 puntaje_total numeric(5,2) check (puntaje_total between 0 and 100)
);

-- 3. TABLA SECUNDARIA: Catálogo de Productos
create table productos_ucu (
 id uuid default gen_random_uuid() primary key,
 proveedor_id uuid references proveedores_ucu(id) on delete cascade,
 codigo_producto text default 'PROD-' || to_char(nextval('seq_codigo_producto'), 'FM0000') unique not null, 
 
 nombre text not null check (char_length(nombre) <= 75),
 categoria text, 
 precio numeric(10, 2) not null check (precio > 0 and precio < 99999), 
 
 -- Ciclo de Vida
 mat_reciclados_pct integer check (mat_reciclados_pct between 0 and 100),
 es_reciclable boolean default false,
 es_reusable boolean default false,
 tiene_fsc boolean default false, -- Se añade aquí la certificación FSC de producto

 url_certificado text, 

 estado text default 'aprobado' check (estado in ('pendiente', 'aprobado', 'rechazado'))
);