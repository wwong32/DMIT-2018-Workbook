using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WestWindConsole.Entities
{
    [Table("Regions")]
    public class Region
    {
        [Key]
        public int RegionID { get; set; }

        public string RegionDescription { get; set; }
    }
}
