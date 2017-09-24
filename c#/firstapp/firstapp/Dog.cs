using System;
using System.Collections.Generic;
using System.Text;

namespace firstapp
{
    class Dog
    {
        public string Color;
        public double Height;
        public bool Mute;
        public string Name;
        public string Breed;
        public string Gender;
        public int Age;
        public bool Trained;
        public double Price;
        public string Bark()
        {
            if (Mute == true)
            {
                return "_";
            }
            return String.Format("Ow Ow! My color is {0} and my name is {1}", Color, Name);
        }
        public string Run() {
            return String.Format("my name is {0} and I run {1} Km/d ", Name, Height * (100));
        }
        public string Jump()
        {
            
            if (Trained == true)
            {
                return "Jumping";
            }
            else
            {
                return "Ow, Ow";
            }
            
        }
        public double Pricing()
        {
            if (Breed == "Vira -latas")
            {
                return 0;
            }
            return Price;
            
        }
    }


}

