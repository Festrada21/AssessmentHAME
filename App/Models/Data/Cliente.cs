namespace App.Models.Data
{
    using System;

    public class Cliente
    {
        public int ClienteID { get; set; }
        public string Nombre { get; set; }
        public string Codigo { get; set; }
        public DateTime FechaAlta { get; set; }
        public string Direccion { get; set; }
        public string Correo { get; set; }
        public string Telefono { get; set; }
        public bool EsClienteCable { get; set; }
        public bool EsClienteInternet { get; set; }
    }

}
