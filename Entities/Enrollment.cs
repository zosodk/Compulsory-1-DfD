using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

public class Enrollment
{
    [Key]
    public Guid Id { get; set; }

    [Required]
    public Guid StudentId { get; set; }

    [Required]
    public Guid CourseId { get; set; }

    [MaxLength(2)]
    public int Grade { get; set; } 
}