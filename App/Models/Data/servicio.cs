namespace ServiciosCableInternet.Models.Data
{
    public class Servicio
    {
        public int ServicioID { get; set; }
        public string Tipo { get; set; } // "Cable" o "Internet"
        public int? Velocidad { get; set; } // Solo para clientes de Internet
        public int? NúmeroCanales { get; set; } // Solo para clientes de Cable
        public decimal CostoMensual { get; set; }

        public List<ClienteServicio> Clientes { get; set; }
    }

}
