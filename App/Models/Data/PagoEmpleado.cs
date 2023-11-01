namespace App.Models.Data
{
    public class PagoEmpleado
    {
        public int PagoEmpleadoID { get; set; }
        public int EmpleadoID { get; set; }
        public DateTime FechaPago { get; set; }
        public decimal MontoPagar { get; set; }
        public decimal CuotasIGSS { get; set; }
        public decimal RetencionISR { get; set; }
    }
}
