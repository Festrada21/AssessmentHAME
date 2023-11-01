namespace App.Models.Data
{
    public class Factura
    {
        public int FacturaID { get; set; }
        public int ClienteID { get; set; }
        public string NumeroFactura { get; set; }
        public DateTime Fecha { get; set; }
        public string Serie { get; set; }
        public decimal Total { get; set; }
    }
}
