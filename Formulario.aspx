<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Formulario.aspx.cs" Inherits="Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

    <script src="jquery-1.3.2.min.js" type="text/javascript"></script>

    <!-- Última versão JavaScript compilada e minificada -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>

    <!DOCTYPE html>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Nome: "></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtNome" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Setor: "></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtSetor" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Registro: "></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtRegistro" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Função: "></asp:Label>
                <asp:TextBox ID="txtFuncao" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="selecao">Justificativa:</label>
                <select class="form-control" id="Justificativa" runat="server">
                    <option>Falta de maracacao de ponto</option>
                    <option>Troca de folga mensal</option>
                    <option>Troca de horário</option>
                    <option>Hora extra(Autorizada pela diretoria)</option>
                    <option>Horas trabalahadas além da jornada</option>
                    <option>Dias/Horas descansadas</option>
                    <option>Folga comemorativa</option>
                </select>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Data: "></asp:Label>
                <input class="form-control" type="text" id="calendarioData" runat="server" />
                <script>
                    $(function () {

                        $("#calendarioData").datepicker({
                            changeMonth: true,
                            changeYear: true,
                            //minDate: 0,
                            dateFormat: 'dd/mm/yy',
                            dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
                            dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
                            dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
                            monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                            monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
                        });;

                    });
                </script>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Horário: "></asp:Label>
                <input type="time" id="horario" runat="server" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="Justificativa">Outras Situações:</label>
                <textarea class="form-control" id="OutraSitu" runat="server"></textarea>
            </div>
            <asp:Button class="btn btn-success btn-block" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />

        </div>
    </form>
</body>
</html>
