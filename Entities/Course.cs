using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Compulsory_1_DfD.Entities
{
    public class Course
    {
        [Key]
        public Guid Id { get; set; }
        [Required]
        [MaxLength(100)]
        public string Title { get; set; }
        [Required]
        public int Credits { get; set; } 
        // Foreign key for Instructor
        public Guid? InstructorId { get; set; }

        public Instructor Instructor { get; set; }
        public ICollection<Enrollment> Enrollments { get; set; }

    }
}
