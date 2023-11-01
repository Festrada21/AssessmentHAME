namespace App.Models.Data
{
    public class DetalleFactura
    {
        public int DetalleID { get; set; }
        public int FacturaID { get; set; }
        public string CodigoServicio { get; set; }
        public string TipoServicio { get; set; }
        public decimal CostoMensual { get; set; }
        public decimal Descuento { get; set; }
        public decimal CostoConDescuento { get; set; }
    }
}
