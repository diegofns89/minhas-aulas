using System;

namespace firstapp
{
    class Program
    {
        static void Main(string[] args)
        {


            PetShop Open = new PetShop();
            Console.WriteLine(Open.Open());

            PetShop Close = new PetShop();
            Close.Opened = false;
            Console.WriteLine(Close.Close());


            Console.ReadLine();
        }
    }
}