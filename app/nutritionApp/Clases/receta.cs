using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutritionApp.Clases
{
    public class receta
    {
        private byte foto;
        private char dificultad;
        private int tiempo;
        private char tiempoComida;
        private decimal carbos;
        private decimal proteinas;
        private decimal grasas;
        private decimal azucares;
        private int calorias;
        private string pasos;

        public byte _Foto { get => foto; set => foto = value; }
        public char _Dificultad { get => dificultad; set => dificultad = value; }
        public int _Tiempo { get => tiempo; set => tiempo = value; }
        public char _TiempoComida { get => tiempoComida; set => tiempoComida = value; }
        public decimal _Carbos { get => carbos; set => carbos = value; }
        public decimal _Proteinas { get => proteinas; set => proteinas = value; }
        public decimal _Grasas { get => grasas; set => grasas = value; }
        public decimal _Azucares { get => azucares; set => azucares = value; }
        public int _Calorias { get => calorias; set => calorias = value; }
        public string _Pasos { get => pasos; set => pasos = value; }
    }
}