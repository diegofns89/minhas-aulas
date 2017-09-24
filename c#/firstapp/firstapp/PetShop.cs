using System;
using System.Collections.Generic;
using System.Text;

namespace firstapp
{
    class PetShop
    {
        public string Name;
        public string Address;
        public string Description;
        public bool Opened; public string Open()
        {
            Opened = true;
            return "Open Now";
        }
        public string Close()
        {

            Opened = false;
            return "Close. Back Tomorrow";
        }
    }
}
    
