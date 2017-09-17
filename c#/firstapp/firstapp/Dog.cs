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
    }


}
