// 1. Credenciales del proyecto SUPABASE (Las encontrás en Supabase -> Project Settings -> API)
const SUPABASE_URL = "https://kiklddnidlxiusrcbvxf.supabase.co";
const SUPABASE_ANON_KEY = "sb_publishable_e4RnXv8pq2LQ3aCiqQcsKg_meWrIIWP";

// 2. Inicializar el cliente 
const supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

