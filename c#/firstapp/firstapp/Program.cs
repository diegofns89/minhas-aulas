using System;

namespace firstapp
{
    class Program
    {
        static void Main(string[] args)
        {
            Dog Rex = new Dog();
            Rex.Color = "Branco";
            Rex.Height = 1.5;
            Rex.Mute = false;
            Rex.Name = "Fred";
            Console.WriteLine(Rex.Bark());
            Console.WriteLine(Rex.Run());

            Dog Scooby = new Dog();
            Scooby.Color = "Preto";
            Scooby.Height = 1.2;
            Scooby.Mute = false;
            Scooby.Name = "Neco";
            Console.WriteLine(Scooby.Bark());
            Console.WriteLine(Scooby.Run());

            Dog Pastor = new Dog();
            Pastor.Color = "Cinza";
            Pastor.Height = 0.2;
            Pastor.Mute = false;
            Pastor.Name = "Cacau";
            Console.WriteLine(Pastor.Bark());
            Console.WriteLine(Pastor.Run());




            Console.ReadLine();
        }
    }
}