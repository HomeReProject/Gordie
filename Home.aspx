<%@ Page Title="" Language="C#" MasterPageFile="~/HomeLogin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GORDIE.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContentPlaceholder" runat="server">
    <h1>Welcome to Gordie</h1>
    <div>
        
        <asp:Button ID="Organization" Class="submit" runat="server" Text="Organization Form" OnClick="Organization_Click" />
        <asp:Button ID="Individual" Class="submit" runat="server" Text="Individual Form" OnClick="Individual_Click" />
        <asp:Button ID="Cutomer" Class="submit" runat="server" Text="Cutomer Form" OnClick="Cutomer_Click" />
        <asp:Button ID="Project_Info" Class="submit" runat="server" Text="Project Info Basic" OnClick="Project_Info_Click" />
        <asp:Button ID="Project_Plan" Class="submit" runat="server" Text="Project Plan Form" OnClick="Project_Plan_Click" />       
        <asp:Button ID="Training_Links" Class="submit" runat="server" Text="Training Links" OnClick="Training_Links_Click" />
        <asp:Button ID="Active_Projects" Class="submit" runat="server" Text="Active Projects Links" OnClick="Active_Projects_Click" />
        <asp:Button ID="Work_Resources" Class="submit" runat="server" Text="Work & Resources" OnClick="Work_Resources_Click" />
        <asp:Button ID="Reports_Accounting" Class="submit" runat="server" Text="Reports &Accounting" OnClick="Reports_Accounting_Click" />
        <asp:Button ID="ShowCaseBilling" Class="submit" runat="server" Text="Showcase Billing" OnClick="ShowCaseBilling_Click" />
        <asp:Button ID="NewProjectOpp" Class="submit" runat="server" Text="New Project Oppurtunities" OnClick="NewProjectOpp_Click" />
        

    </div>
    <p> Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el 
        contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras,
        al contrario de usar textos como por ejemplo "Contenido aquí, contenido aquí". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes 
        de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de "Lorem Ipsum" va a dar por resultado
        muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por
        accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p>
</asp:Content>
