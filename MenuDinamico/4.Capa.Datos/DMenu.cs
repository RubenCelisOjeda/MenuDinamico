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

        public IList<EMenuDinamico> GetMenu(int parentMenuId, int pIdUsuario)
        {
            using (var connection = dConnectionFactory.GetConnectionMenuDinamico)
            {
                const string procedure = @"SELECT MA.IdMenu,
		                                            M.ParenIdMenu,
		                                            M.TitleMenu,
		                                            M.UrlMenu,
		                                            MA.IdUsuario

	                                            FROM [dbo].[SMAN_MENU_ACCESO] MA INNER JOIN SMAN_MENU M ON MA.IdMenu = M.IdMenu
	                                            WHERE  M.ParenIdMenu = @pParentMenuId AND
		                                               MA.IdUsuario = @pIdUsuario";

                var parameters = new DynamicParameters();
                parameters.Add("@pParentMenuId", parentMenuId, DbType.Int32);
                parameters.Add("@pIdUsuario", pIdUsuario, DbType.Int32);

                var response = connection.Query<EMenuDinamico>(procedure, parameters, commandType: CommandType.Text).ToList();
                return response;
            }
        }

    }
}
