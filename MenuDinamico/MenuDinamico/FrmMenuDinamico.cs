
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
            try
            {
                if (this.menuStrip1.Items.Count > 0)
                {
                    this.menuStrip1.Items.Clear();
                }

                GetMenuCarga(0, null, menuStrip1);
            }   
            catch (Exception ex)
            {
                ex.Message.ToString();
                throw;
            }

        }

        private void GetMenuCarga(int IdMenu, ToolStripMenuItem parentMenuItem, MenuStrip menu)
        {
            try
            {
                if (this.menuStrip1.Items.Count > 0)
                {
                    this.menuStrip1.Items.Clear();
                }
                this.CargarMenu(IdMenu, parentMenuItem, menu);
            }
            catch (Exception ex)
            {

            }
        }

        private void CargarMenu(int pIdMenu, ToolStripMenuItem pItem, MenuStrip pMenu)
        {

            var menuData = nMenu.GetMenu(pIdMenu, 1);

            foreach (var item in menuData)
            {
                var menuDinamico = new ToolStripMenuItem()
                {
                    Text = item.TitleMenu,
                    Name = item.IdMenu.ToString(),
                    Tag = item.UrlMenu
                };

                if (pIdMenu == 0)
                {
                    this.menuStrip1.Items.Add(menuDinamico);
                }
                else
                {
                    pItem.DropDownItems.Add(menuDinamico);
                }
                CargarMenu(item.IdMenu, menuDinamico, pMenu);
            }
        }
    }
}
