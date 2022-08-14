using _2.Capa.Entidades.Menu;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace _4.Capa.Datos
{
    public class DMenu
    {
        private readonly DConnectionFactory dConnectionFactory = null;

        public DMenu()
        {
            dConnectionFactory = new DConnectionFactory();
        }

        public IList<EMenuDinamico> GetMenu()
        {
            using (var connection = dConnectionFactory.GetConnectionMenuDinamico)
            {
                const string procedure = "SELECT * FROM SMAN_MENU_ACCESO";

                var response = connection.Query<EMenuDinamico>(procedure, commandType: CommandType.Text).ToList();
                return response;
            }
        }

    }
}
