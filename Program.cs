﻿using Compulsory_1_DfD;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

public class Program
{
    public static void Main()
    {
        // Build the configuration
        var configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json")
            .Build();

        // Get the connection string
        var connectionString = configuration.GetConnectionString("UniversityDatabase");

        // Try to connect to the database
        try
        {
            using (var context = new UniversityContext())
            {
                context.Database.OpenConnection();
                Console.WriteLine("Successfully connected to the database!");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error connecting to the database: {ex.Message}");
        }
    }
}