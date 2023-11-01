namespace ServiciosCableInternet.Models.Data
{
    public class Cliente
    {
        public int ClienteID { get; set; }
        public string Nombre { get; set; }
        public string Código { get; set; }
        public DateTime FechaAlta { get; set; }
        public string Dirección { get; set; }
        public string Correo { get; set; }
        public string Teléfono { get; set; }

        public List<ClienteServicio> Servicios { get; set; }
        public List<Factura> Facturas { get; set; }
        public List<Pago> Pagos { get; set; }
    }

}
