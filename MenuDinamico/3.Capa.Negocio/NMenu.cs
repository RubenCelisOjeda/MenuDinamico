using _2.Capa.Entidades.Menu;
using _4.Capa.Datos;
using System.Collections.Generic;

namespace _3.Capa.Negocio
{
    public class NMenu
    {
        private readonly DMenu dMenu = null;

        public NMenu()
        {
            dMenu = new DMenu();
        }

        public IList<EMenuDinamico> GetMenu()
        {
            return dMenu.GetMenu();
        }
    }
}
