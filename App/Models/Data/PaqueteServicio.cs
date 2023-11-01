namespace App.Models.Data
{
    public class PaqueteServicio
    {
        public int PaqueteID { get; set; }
        public string Nombre { get; set; }
        public decimal CostoMensual { get; set; }
        public decimal Descuento { get; set; }
        public int AumentoVelocidad { get; set; }
        public string UbicacionServicio { get; set; }
    }
}
