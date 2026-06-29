// 1. Importar el creador de clientes desde la CDN de módulos
import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';

// 2. Credenciales del proyecto
const SUPABASE_URL = "https://kiklddnidlxiusrcbvxf.supabase.co";
const SUPABASE_ANON_KEY = "sb_publishable_e4RnXv8pq2LQ3aCiqQcsKg_meWrIIWP";

// 3. Inicializar el cliente usando la función importada (ya no usamos "window.supabase")
const supabaseClient = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

// 4. Exportar la variable para que otros archivos la puedan importar
export { supabaseClient };

