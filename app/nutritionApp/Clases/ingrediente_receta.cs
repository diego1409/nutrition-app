using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutritionApp.Clases
{
    public class ingrediente_receta
    {
        private int idReceta;
        private int idIngrediente;
        private decimal cantidad;
        private string medida;
        private string observaciones;
        private string nombre_ingrediente;

        public int _IdReceta { get => idReceta; set => idReceta = value; }
        public int _IdIngrediente { get => idIngrediente; set => idIngrediente = value; }
        public decimal _Cantidad { get => cantidad; set => cantidad = value; }
        public string _Medida { get => medida; set => medida = value; }
        public string _Observaciones { get => observaciones; set => observaciones = value; }
        public string _Nombre_ingrediente { get => nombre_ingrediente; set => nombre_ingrediente = value; }
    }
}