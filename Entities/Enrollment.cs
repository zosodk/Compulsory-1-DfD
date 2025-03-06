using Compulsory_1_DfD.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class Enrollment
{
    [Key]
    public Guid Id { get; set; }

    // Foreign keys
    public Guid StudentId { get; set; }
    public Guid CourseId { get; set; }

    // iCollection/navigational 
    public Student Student { get; set; }
    public Course Course { get; set; }

    [MaxLength(2)]
    public int Grade { get; set; } 
}