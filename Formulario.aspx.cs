using System;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using FormularioJust;

public partial class Formulario : System.Web.UI.Page
{
    public static void AdicionarFormulario(Formularioref f)
    {
        XElement x = new XElement("Forumulario");
        x.Add(new XElement("Nome", f.Nome));
        x.Add(new XElement("Funcao", f.Funcao));
        x.Add(new XElement("Registro", f.Registro));
        x.Add(new XElement("Setor", f.Setor));
        x.Add(new XElement("Justificativa", f.Justificativa));
        x.Add(new XElement("DataOcorrido", f.DataOcorrido));
        x.Add(new XElement("HorarioOcorrido", f.HorarioOcorrido));
        x.Add(new XElement("OutrasSituacoes",f.OutrasSituacoes));
        
        XElement xml = XElement.Load(@"C:\Users\claudio.silva\source\repos\FormularioJust\FormularioJustif\Formulario.xml");
        xml.Add(x);
        xml.Save(@"C:\Users\claudio.silva\source\repos\FormularioJust\FormularioJustif\Formulario.xml");       
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //teste
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        try
        {
            Formularioref novoForm = new Formularioref()
            {
                Nome = txtNome.Text,
                Setor = txtSetor.Text,
                Registro = txtRegistro.Text,
                Funcao = txtFuncao.Text,
                Justificativa = Justificativa.Value,
                OutrasSituacoes = OutraSitu.Value,
                DataOcorrido = calendarioData.Value,
                HorarioOcorrido = horario.Value
            };

            Formulario.AdicionarFormulario(novoForm);

            txtFuncao.Text = "";
            txtNome.Text = "";
            txtRegistro.Text = "";
            txtSetor.Text = "";
            OutraSitu.Value = "";
            calendarioData.Value = "";
            horario.Value = "";

            MessageBox.Show("Formulario Salvo");
        }

        catch(Exception ex)
        {
            MessageBox.Show(ex.Message);
        }
    }
}