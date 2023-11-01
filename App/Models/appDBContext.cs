using Microsoft.EntityFrameworkCore;

namespace ServiciosCableInternet.Models
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {
        }

        public DbSet<Cliente> Clientes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}



//using Microsoft.EntityFrameworkCore;
//using Microsoft.Extensions.Configuration;

//public class ApplicationDbContext : DbContext
//{
//    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

//    // Definir DbSet para tus modelos
//    public DbSet<Cliente> Clientes { get; set; }
//    // Otros DbSet para tus modelos

//    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
//    {
//        if (!optionsBuilder.IsConfigured)
//        {
//            var configuration = new ConfigurationBuilder()
//                .SetBasePath(Directory.GetCurrentDirectory())
//                .AddJsonFile("appsettings.json")
//                .Build();

//            var connectionString = configuration.GetConnectionString("DefaultConnection");
//            optionsBuilder.UseSqlServer(connectionString);
//        }
//    }
//}
