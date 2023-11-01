namespace App.Models.Data
{
    public class Servicio
    {
        public int ServicioID { get; set; }
        public int ClienteID { get; set; }
        public string TipoServicio { get; set; }
        public int Velocidad { get; set; } // Solo para clientes de Internet
        public string TipoCable { get; set; } // Básico o Premium para clientes de cable
        public string Ubicacion { get; set; }
    }
}
