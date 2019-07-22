using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutritionApp.Clases
{
    public class planNutricional
    {
        //Variables a utilizar
        public int idPlan;
        public int idUsuario;
        public DateTime fecha;
        public string carbos;
        public string proteinas;
        public string grasas;
        public string azucares;
        public int cantComidas;
        public int calorias;

        //Constructor con valores
        public planNutricional (int idUsuario, string carbos, string proteinas, string grasas, string azucares, int calorias)
        {
            this.idUsuario = idUsuario;
            this.carbos = carbos;
            this.proteinas = proteinas;
            this.grasas = grasas;
            this.azucares = azucares;
            this.calorias = calorias;
        }

        //Constructor vacio
        public planNutricional ()
        {

        }
    }
}