﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Wardrobe.Models
{
    public class WardrobeContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public WardrobeContext() : base("name=WardrobeContext")
        {
        }

        public System.Data.Entity.DbSet<Wardrobe.Models.Outfit> Outfits { get; set; }

        public System.Data.Entity.DbSet<Wardrobe.Models.Accessory> Accessories { get; set; }

        public System.Data.Entity.DbSet<Wardrobe.Models.Bottom> Bottoms { get; set; }

        public System.Data.Entity.DbSet<Wardrobe.Models.Shoe> Shoes { get; set; }

        public System.Data.Entity.DbSet<Wardrobe.Models.Top> Tops { get; set; }
    }
}
