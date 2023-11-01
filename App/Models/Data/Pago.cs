namespace App.Models.Data
{
    public class Pago
    {
        public int PagoID { get; set; }
        public int FacturaID { get; set; }
        public DateTime FechaPago { get; set; }
        public decimal MontoPagado { get; set; }
    }
}
