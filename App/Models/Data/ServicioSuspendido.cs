namespace App.Models.Data
{
    using System;
    
public class ServicioSuspendido
{
    public int SuspendidoID { get; set; }
    public int ClienteID { get; set; }
    public DateTime FechaSuspension { get; set; }
}
}
