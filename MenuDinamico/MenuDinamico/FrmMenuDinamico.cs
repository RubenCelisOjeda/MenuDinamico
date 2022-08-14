
using _3.Capa.Negocio;
using System;
using System.Windows.Forms;

namespace MenuDinamico
{
    public partial class frmMenuDinamico : Form
    {
        private readonly NMenu nMenu = null;

        public frmMenuDinamico()
        {
            nMenu = new NMenu();

            InitializeComponent();
        }

        private void frmMenuDinamico_Load(object sender, EventArgs e)
        {
            CargarMenu(0, null, menuStrip1, 1);


            ////NMenu nMenu2 = new NMenu();
            ////nMenu2.GetMenu();
            var data = nMenu.GetMenu();
            //var responseData = nMenu.GetMenu();
        }

        private void CargarMenu(int pIdMenu, ToolStripMenuItem pItem, MenuStrip pMenu,int pCodUsuario)
        {

            var menuData = nMenu.GetMenu();

            foreach (var item in menuData)
            {
                var menuDinamico = new ToolStripMenuItem()
                {
                    Text = item.TitleMenu,
                    Name = item.IdMenu.ToString(),
                    Tag = item.UrlMenu
                };

                if (item.ParendIdMenu == 0)
                {
                    pMenu.Items.Add(menuDinamico);
                }
                else
                {
                    pItem.DropDownItems.Add(menuDinamico);
                }
                CargarMenu(item.ParendIdMenu, menuDinamico, pMenu, pCodUsuario);
            }
        }
    }
}
