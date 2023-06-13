﻿using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace RegistrationApp.Models
{
    public class RegisterViewModel
    {
        [Required]
        //[EmailAddress]
        public string UserName { get; set; }
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm Password")]
        [Compare("Password", ErrorMessage = "Password and confirmation password not match.")]
        public string ConfirmPassword { get; set; }
    }
}
