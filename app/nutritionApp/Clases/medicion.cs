using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutritionApp
{
    public class Medicion
    {
        private int idMedicion;
        private int idUsuario;
        private decimal peso;
        private decimal grasa;
        private decimal musculo;
        private decimal agua;
        private decimal hueso;
        private string observaciones;
        private decimal imc;
        private DateTime fecha;

        public int _IdUsuario { get => idUsuario; set => idUsuario = value; }
        public decimal _Peso { get => peso; set => peso = value; }
        public decimal _Grasa { get => grasa; set => grasa = value; }
        public decimal _Musculo { get => musculo; set => musculo = value; }
        public decimal _Agua { get => agua; set => agua = value; }
        public decimal _Hueso { get => hueso; set => hueso = value; }
        public string _Observaciones { get => observaciones; set => observaciones = value; }
        public decimal _Imc { get => imc; set => imc = value; }
        public DateTime _Fecha { get => fecha; set => fecha = value; }
        public int _IdMedicion { get => idMedicion; set => idMedicion = value; }
    }
}