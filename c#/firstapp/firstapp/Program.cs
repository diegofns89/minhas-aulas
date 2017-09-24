using System;

namespace firstapp
{
    class Program
    {
        static void Main(string[] args)
        {
            Dog Jump = new Dog();
            Jump.Color = "Branco";
            Jump.Height = 1.5;
            Jump.Mute = false;
            Jump.Name = "Fred";
            Jump.Breed = "2";
            Jump.Gender = "Canis";
            Jump.Age = 4;
            Jump.Trained = true;
            Console.WriteLine(Jump.Jump());

            Dog Pricing = new Dog();
            Pricing.Color = "Branco";
            Pricing.Height = 1.5;
            Pricing.Mute = false;
            Pricing.Name = "Fred";
            Pricing.Breed = "2";
            Pricing.Gender = "Canis";
            Pricing.Age = 4;
            Pricing.Trained = true;
            Pricing.Price = 2;


            Console.WriteLine(Pricing.Pricing());




            Console.ReadLine();
        }
    }
}