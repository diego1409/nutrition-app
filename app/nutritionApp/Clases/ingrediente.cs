using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutritionApp.Clases
{
    public class ingrediente
    {
        private int idIngrediente;
        private string nombre;

        public int _IdIngrediente { get => idIngrediente; set => idIngrediente = value; }
        public string _Nombre { get => nombre; set => nombre = value; }
    }
}