<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="imagenes.aspx.cs" Inherits="Reception_Sgs.views.mantenedores.imagenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
            <div class="card">  
                 <div class="header">
     <h4 class="title">Búsqueda</h4>
 </div>
              <div class="">                          
                  <div class="row">
                      <div class="col-md-12">
                            <div id="MensajeExito" runat="server" visible="false" class="alert alert-success">
                  <button type="button" aria-hidden="true" class="close">×</button>
                  <span>Se eliminó la imagen correctamente.</span>
                </div>
                        <div id="MensajeError" runat="server" visible="false" class="alert alert-danger">
                  <button type="button" aria-hidden="true" class="close">×</button>
                  <span>Error al eliminar imagen.</span>
                </div>
                      </div>
                    
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>OL</label>
                          <asp:TextBox ID="txtOL" runat="server" TextMode="Number" CssClass="form-control border-input"></asp:TextBox>            
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>OI</label>
                     
                           <asp:TextBox ID="txtOI" runat="server" TextMode="Number" CssClass="form-control border-input"></asp:TextBox>  
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>OISP</label>
                       <asp:TextBox ID="txtOISP" runat="server" TextMode="Number" CssClass="form-control border-input"></asp:TextBox>  
                      </div>
                    </div>
                  </div>

                  <div class="text-center">
                      <asp:Button ID="btnBuscar" Text="Buscar" OnClick="btnBuscar_Click" runat="server" CssClass="btn btn-info btn-fill btn-wd" />
          
                  </div>
                             
              </div>
            </div>
         <div class="header">
     <h4 class="title">Resultados</h4>
 </div>
         <asp:GridView runat="server" OnRowCommand="dgvImagenes_RowCommand" DataKeyNames="id" ShowHeaderWhenEmpty="true" EmptyDataText="No Existen Imágenes"  AutoGenerateColumns="false" CssClass="table table-striped" id="dgvImagenes">
        <Columns>
              <asp:BoundField DataField="id" HeaderText="ID" />
              <asp:BoundField DataField="fileName" HeaderText="NOMBRE"  />
              <asp:BoundField DataField="filePath" HeaderText="RUTA" />
              <asp:BoundField DataField="fileBase" HeaderText="TIPO" />
              <asp:BoundField DataField="createdDate" HeaderText="FECHA CREADO"  />
              <asp:BoundField DataField="modifyDate" HeaderText="FECHA MOD." />
            <asp:ButtonField ButtonType="Button" CommandName="Eliminar" Text="Eliminar" ControlStyle-CssClass="btn btn-danger btn-fill btn-wd" />
        </Columns>
    </asp:GridView>
        
 <div class="header">
     <h4 class="title">Imágenes</h4>
 </div>
       <asp:Repeater ID="RptImages" runat="server">
    <ItemTemplate>
        <div class="col-lg-4 col-md-4">
            <div class="card card-user">
             
              <div class="content">
                <div class="">
                  <img class="img-responsive" src="<%# DataBinder.Eval(Container.DataItem, "fileBase")%>" alt="<%# DataBinder.Eval(Container.DataItem, "fileName")%>">
                  <center><h4 class="title"><%# DataBinder.Eval(Container.DataItem, "fileName")%></h4></center>
                
                </div>
                <p class="description text-center">
                 <%# DataBinder.Eval(Container.DataItem, "filePath")%>
                </p>
              </div>
      
            </div>
        
          </div>
     
    </ItemTemplate>
</asp:Repeater>
  
  
</asp:Content>