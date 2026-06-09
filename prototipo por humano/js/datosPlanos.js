// Base de datos de proveedores — UCU Compras Sostenibles
// Estructura: cada proveedor tiene un array de productos con sus propios criterios
// Datos hardcodeados para el testeo del prototipo V2

const PROVEEDORES = [
    {
        id: "ecoproveedores-uy",
        nombre: "EcoProveedores UY Ltda.",
        contacto: "Valentina Rocha",
        email: "v.rocha@ecoproveedores.com.uy",
        telefono: "+598 2 410 8800",
        cobertura: "local",
        descripcion: "Empresa uruguaya especializada en papelería sustentable. Todos sus productos son fabricados con materiales de origen responsable y procesos certificados.",
        fecha_registro: "2025-03-10",
        embalaje_sostenible: "si",
        energia_renovable: "si",
        politica_devolucion: true,
        certificaciones: ["ISO14001", "EMAS"],
        puntaje: 95,
        desafios: "Ampliar la red de proveedores de insumos reciclados a nivel local.",
        metas: "Alcanzar el 100% de embalaje biodegradable para 2026.",
        productos: [
            {
                id: "eco-resma-a4",
                nombre: "Resma A4 80g Reciclada",
                precio: 320,
                categoria: "papel",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 100,
                certificaciones: ["FSC"]
            },
            {
                id: "eco-cuaderno",
                nombre: "Cuaderno Universitario Kraft",
                precio: 180,
                categoria: "papel",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 80,
                certificaciones: ["FSC"]
            },
            {
                id: "eco-boligrafos",
                nombre: "Set Bolígrafos Bioplástico x5",
                precio: 210,
                categoria: "escritura",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 60,
                certificaciones: []
            }
        ]
    },
    {
        id: "paperuy-sa",
        nombre: "PaperUY S.A.",
        contacto: "Rodrigo Bentancur",
        email: "rbentancur@paperuy.com.uy",
        telefono: "+598 2 900 1234",
        cobertura: "local",
        descripcion: "Distribuidora nacional con más de 20 años en el mercado. Recientemente incorporó líneas de productos con certificación FSC.",
        fecha_registro: "2025-04-02",
        embalaje_sostenible: "parcial",
        energia_renovable: "no",
        politica_devolucion: true,
        certificaciones: ["ISO14001"],
        puntaje: 66,
        desafios: "Migrar la logística a vehículos de menor emisión.",
        metas: "Incorporar energía solar en el depósito principal para 2025.",
        productos: [
            {
                id: "paper-resma-standard",
                nombre: "Resma A4 75g Standard",
                precio: 245,
                categoria: "papel",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 40,
                certificaciones: ["FSC"]
            },
            {
                id: "paper-carpetas",
                nombre: "Carpeta Plástica A4",
                precio: 85,
                categoria: "archivo",
                reciclable: false,
                reutilizable: true,
                mat_reciclados_pct: 0,
                certificaciones: []
            }
        ]
    },
    {
        id: "distribuidora-central",
        nombre: "Distribuidora Central S.R.L.",
        contacto: "Marcelo Suárez",
        email: "msuarez@distcentral.com.uy",
        telefono: "+598 2 308 5500",
        cobertura: "ambos",
        descripcion: "Proveedor de insumos de oficina con distribución nacional e internacional. Cuenta con certificación ISO 14001 vigente.",
        fecha_registro: "2025-04-18",
        embalaje_sostenible: "parcial",
        energia_renovable: "parcial",
        politica_devolucion: false,
        certificaciones: ["ISO14001"],
        puntaje: 52,
        desafios: "Reducir packaging plástico en un 50% antes de fin de año.",
        metas: "Obtener certificación FSC para su línea de papel.",
        productos: [
            {
                id: "dc-resma-importada",
                nombre: "Resma A4 80g Importada",
                precio: 198,
                categoria: "papel",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 20,
                certificaciones: []
            },
            {
                id: "dc-marcadores",
                nombre: "Set Marcadores Permanentes x12",
                precio: 320,
                categoria: "escritura",
                reciclable: false,
                reutilizable: false,
                mat_reciclados_pct: 0,
                certificaciones: []
            },
            {
                id: "dc-clips",
                nombre: "Caja Clips Metálicos x100",
                precio: 65,
                categoria: "organización",
                reciclable: true,
                reutilizable: true,
                mat_reciclados_pct: 90,
                certificaciones: []
            }
        ]
    },
    {
        id: "officeshop-uy",
        nombre: "OfficeShop Uruguay",
        contacto: "Lucía Fernández",
        email: "lfernandez@officeshop.com.uy",
        telefono: "+598 2 622 7700",
        cobertura: "importado",
        descripcion: "Cadena de papelería con múltiples sucursales en Montevideo. Importa la mayoría de sus productos desde Brasil y Argentina.",
        fecha_registro: "2025-05-01",
        embalaje_sostenible: "no",
        energia_renovable: "no",
        politica_devolucion: true,
        certificaciones: [],
        puntaje: 25,
        desafios: "Incorporar criterios de sostenibilidad en la selección de proveedores internacionales.",
        metas: "Iniciar proceso de certificación ISO 14001 en 2026.",
        productos: [
            {
                id: "os-resma-basica",
                nombre: "Resma A4 75g Básica",
                precio: 175,
                categoria: "papel",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 0,
                certificaciones: []
            },
            {
                id: "os-lapiceras",
                nombre: "Pack Lapiceras Bic x10",
                precio: 145,
                categoria: "escritura",
                reciclable: false,
                reutilizable: false,
                mat_reciclados_pct: 0,
                certificaciones: []
            }
        ]
    },
    {
        id: "papeleria-del-sur",
        nombre: "Papelería del Sur",
        contacto: "Andrés Méndez",
        email: "andres@papeleriasur.uy",
        telefono: "+598 4 332 1900",
        cobertura: "local",
        descripcion: "Empresa familiar con base en Maldonado. Proveedora regional con fuerte compromiso con productos de papel de origen responsable.",
        fecha_registro: "2025-05-15",
        embalaje_sostenible: "si",
        energia_renovable: "parcial",
        politica_devolucion: false,
        certificaciones: [],
        puntaje: 58,
        desafios: "Formalizar procesos para obtener certificación ISO 14001.",
        metas: "Expandir cobertura a todo el territorio nacional manteniendo logística sostenible.",
        productos: [
            {
                id: "sur-cuaderno-espiral",
                nombre: "Cuaderno Espiral 80 hojas",
                precio: 155,
                categoria: "papel",
                reciclable: true,
                reutilizable: false,
                mat_reciclados_pct: 60,
                certificaciones: ["FSC"]
            },
            {
                id: "sur-carpeta-carton",
                nombre: "Carpeta Cartón Reciclado A4",
                precio: 95,
                categoria: "archivo",
                reciclable: true,
                reutilizable: true,
                mat_reciclados_pct: 85,
                certificaciones: []
            }
        ]
    }
];