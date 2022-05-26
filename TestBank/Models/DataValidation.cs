using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TestBank.Models
{
    public class DataValidation:ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            DateTime CurrentDate = DateTime.Now;

            string message = "";

            if (Convert.ToDateTime(value) > CurrentDate)
            {
                message = "DOB should not be greater than current Date";
                return new ValidationResult(message);
            }
            return ValidationResult.Success;
        }
    }
}