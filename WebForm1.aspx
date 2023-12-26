<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="aula_dia_24_10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type='text/css'>
            *{
                font-family: Verdana, Geneva, Tahoma, sans-serif; 
				text-align: center;
				align-self: center;
				font-style: normal;

            }
			.a{
			margin-top: 50px;
			}
            
			.button
			{
			margin-top: 10px;
			} 
        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:TextBox ID="txtAluno" runat="server" placeholder="Insira um nome"></asp:TextBox>

             <div class='notas'>
            <asp:TextBox ID="txtNota1" runat="server" placeholder="Insira nota 1"></asp:TextBox>

            <asp:TextBox ID="txtNota2" runat="server" placeholder="Insira nota 2" ></asp:TextBox>
            </div>

             <div class='notas2'>
            <asp:TextBox ID="txtNota3" runat="server" placeholder="Insira nota 3" ></asp:TextBox>

            <asp:TextBox ID="txtNota4" runat="server" placeholder="Insira nota 4" ></asp:TextBox>
                 </div>

             <div class = 'button'>
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" />
                 <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" />
              </div>

           
        </div>
    </form>

    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <script type='text/javascript'>
	
	
	   $(document).ready(function(){
        
        
            $('#btnCalcular').click(function(){
            
            
            var n1 = parseInt($('#txtNota1').val());
			var n2 = parseInt($('#txtNota2').val());
			var n3 = parseInt($('#txtNota3').val());
			var n4 = parseInt($('#txtNota4').val());
            
            var Nome = $('#txtAluno').val();
            
            if(!isNaN(Nome) || Nome == '')
            {
                alert("Insira um nome válido");
            }
            
            if(isNaN(n1) || n1 ==  "" || isNaN(n2) || n2 ==  "" || isNaN(n3) || n3 ==  "" || isNaN(n4) || n4 ==  "")
            {
                alert("Insira uma nota valida");
            }
			
			else
			{
			var soma = n1+n2+n3+n4;
			var res = soma/4;
    

                alert('A nota do aluno ' + Nome + ' é: ' + res + " sua notas foram: " + n1 + ',' + n2 + ',' + n3 + ',' + n4);
            
               
                    
					
               }
            
            });

        });
	
	
    </script>
</body>
</html>
