using Compulsory_1_DfD.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class Department
{
	[Key]
	public Guid Id { get; set; }

	[Required]
	[MaxLength(100)]
	public string Name { get; set; }

	public decimal? Budget { get; set; }

	[Required]
	public DateTime StartDate { get; set; }

	// Foreign key 
	public Guid? DepartmentHeadId { get; set; }

	// ICollention/navigational
	public Instructor DepartmentHead { get; set; }
}