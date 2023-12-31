﻿using App.Models.Data;
using Microsoft.EntityFrameworkCore;

namespace App
{
    public class dataContext : DbContext
    {
        public dataContext(DbContextOptions<dataContext> options) : base(options)
        {
        }

        public DbSet<Cliente> Clientes { get; set; }

        public DbSet<App.Models.Data.Empleado>? Empleado { get; set; }

        public DbSet<App.Models.Data.Servicio>? Servicio { get; set; }
    }
}
