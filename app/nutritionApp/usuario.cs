using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nutritionApp
{
    public class Usuario
    {
        private byte foto;
        private string cedula;
        private string genero;
        private DateTime fechaNac;
        private string nombre;
        private string apellido1;
        private string apellido2;
        private string direccion;
        private string telefono1;
        private int estatura;
        private int peso;
        private string proposito;
        private string correo;
        private string nomUsuario;
        private string contrasena;
        private string tipoUsuario;


        public byte _Foto { get => foto; set => foto = value; }
        public string _Cedula { get => cedula; set => cedula = value; }
        public string _Genero { get => genero; set => genero = value; }
        public DateTime _FechaNac { get => fechaNac; set => fechaNac = value; }
        public string _Nombre { get => nombre; set => nombre = value; }
        public string _Apellido1 { get => apellido1; set => apellido1 = value; }
        public string _Apellido2 { get => apellido2; set => apellido2 = value; }
        public string _Direccion { get => direccion; set => direccion = value; }
        public string _Telefono1 { get => telefono1; set => telefono1 = value; }
        public int _Estatura { get => estatura; set => estatura = value; }
        public int _Peso { get => peso; set => peso = value; }
        public string Proposito { get => proposito; set => proposito = value; }
        public string Correo { get => correo; set => correo = value; }
        public string _NomUsuario { get => nomUsuario; set => nomUsuario = value; }
        public string _Contrasena { get => contrasena; set => contrasena = value; }
        public string _TipoUsuario { get => tipoUsuario; set => tipoUsuario = value; }
    }
}