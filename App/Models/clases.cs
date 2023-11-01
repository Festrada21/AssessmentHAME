using System;
using System.Collections.Generic;

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

public class Servicio
{
    public int ServicioID { get; set; }
    public string Tipo { get; set; } // "Cable" o "Internet"
    public int? Velocidad { get; set; } // Solo para clientes de Internet
    public int? NúmeroCanales { get; set; } // Solo para clientes de Cable
    public decimal CostoMensual { get; set; }

    public List<ClienteServicio> Clientes { get; set; }
}

public class Ubicación
{
    public int UbicaciónID { get; set; }
    public string DirecciónInstalación { get; set; }
    public string LugarInstalación { get; set; }
}

public class Factura
{
    public int FacturaID { get; set; }
    public string Número { get; set; }
    public DateTime Fecha { get; set; }
    public string Serie { get; set; }

    public int ClienteID { get; set; }
    public Cliente Cliente { get; set; }

    public List<DetalleFactura> Detalles { get; set; }
}

public class DetalleFactura
{
    public int DetalleFacturaID { get; set; }
    public int FacturaID { get; set; }
    public int ServicioID { get; set; }
    public string TipoServicio { get; set; }
    public decimal CostoMensual { get; set; }

    public Factura Factura { get; set; }
}

public class Pago
{
    public int PagoID { get; set; }
    public int ClienteID { get; set; }
    public DateTime FechaPago { get; set; }
    public decimal MontoPagado { get; set; }

    public Cliente Cliente { get; set; }
}

public class Empleado
{
    public int EmpleadoID { get; set; }
    public string Nombre { get; set; }
    public string Puesto { get; set; }
}

public class Nomina
{
    public int NominaID { get; set; }
    public int EmpleadoID { get; set; }
    public DateTime FechaPago { get; set; }
    public decimal MontoNeto { get; set; }
    public decimal CuotasIGSS { get; set; }
    public decimal RetencionISR { get; set; }

    public Empleado Empleado { get; set; }
}

public class DescuentoConfigurable
{
    public int DescuentoConfigurableID { get; set; }
    public string TipoDescuento { get; set; }
    public decimal ValorDescuento { get; set; }
}

public class ClienteServicioDescuento
{
    public int ClienteServicioDescuentoID { get; set; }
    public int ClienteServicioID { get; set; }
    public int DescuentoConfigurableID { get; set; }

    // Otras propiedades y relaciones
}
public class ClienteDescuento
{
    public int ClienteDescuentoID { get; set; }
    public int ClienteID { get; set; }
    public int DescuentoConfigurableID { get; set; }

    public Cliente Cliente { get; set; }
    public DescuentoConfigurable Descuento { get; set; }
}

public class ClienteServicio
{
    public int ClienteServicioID { get; set; }
    public int ClienteID { get; set; }
    public int ServicioID { get; set; }

    public Cliente Cliente { get; set; }
    public Servicio Servicio { get; set; }

    public List<ClienteServicioDescuento> Descuentos { get; set; }
}

public class ClienteInternetHistorial
{
    public int ClienteInternetHistorialID { get; set; }
    public int ClienteID { get; set; }
    public DateTime FechaAumento { get; set; }
    public int VelocidadAumento { get; set; }
}
