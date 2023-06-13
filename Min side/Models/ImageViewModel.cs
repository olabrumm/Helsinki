using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Xml.Linq;

namespace RegistrationApp.Models
{
    public class ImageViewModel
    {
        [Display(Name = "Profile Picture")]
        public byte[] ProfilePicture { get; set; }
    }
}
