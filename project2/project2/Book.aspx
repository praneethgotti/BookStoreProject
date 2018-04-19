<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="project2.Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        Welcome to my Bookstore

        <table>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <label>Student ID (9 digits)</label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentID" runat="server" /> 
                    <asp:RequiredFieldValidator ID="rfvStudentID" ErrorMessage="Enter Student ID" ControlToValidate="txtStudentID" runat="server" />
                    <asp:RegularExpressionValidator ErrorMessage="Not a valid Student ID. It has to be 9 digits" 
                        ControlToValidate="txtStudentID" runat="server" ValidationExpression="^\d{9}$" />
                   

                </td>
            </tr>
            <tr>
                <td>
                    <label>Name</label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" /> 
                    <asp:RequiredFieldValidator ID="rfvName" ErrorMessage="Enter Name" ControlToValidate="txtName" runat="server" />
                  <asp:RegularExpressionValidator ErrorMessage="Not a valid name. It has to be a proper name" 
                        ControlToValidate="txtName" runat="server" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" />
                
                </td>
            </tr>
            <tr>
                <td>
                    <label>Address</label>

                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" />  
                    <asp:RequiredFieldValidator ID="rfvAddress" ErrorMessage="Enter Address" ControlToValidate="txtAddress" runat="server" />

                </td>
            </tr>
            <tr>
                <td>
                    <label>Phone Number(10 digits)</label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" />
                    <asp:RequiredFieldValidator ID ="rfvPhoneNumber" ErrorMessage="Enter Phone Number" 
                        ControlToValidate="txtPhoneNumber" runat="server" />
                    <asp:RegularExpressionValidator ErrorMessage="Not valid phone number" 
                        ControlToValidate="txtPhoneNumber" runat="server" ValidationExpression="^\d{10}$" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Campus</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCampus" runat="server" CausesValidation="True" >
                        <asp:ListItem>Main</asp:ListItem>
                        <asp:ListItem>Center City</asp:ListItem>
                        <asp:ListItem>Rome</asp:ListItem>
                        <asp:ListItem>Tokyo</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCampus" runat="server" ControlToValidate="ddlCampus" 
                        ErrorMessage="Select one value"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="auto-style1">
                    </td>


            </tr>

        </table>


        <%--<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to My Bookstore<p>
            <asp:TextBox ID="txtStudentID" runat="server" style="z-index: 1; left: 230px; top: 133px; position: absolute"></asp:TextBox>
    
        </p>
        <p>
            <asp:Label ID="lblStudentID" runat="server" style="z-index: 1; left: 64px; top: 138px; position: absolute" Text="StudentID"></asp:Label>
        </p>
        <asp:Label ID="lblName" runat="server" style="z-index: 1; left: 67px; top: 177px; position: absolute; bottom: 156px" Text="Name"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server" style="z-index: 1; left: 229px; top: 207px; position: absolute; height: 16px"></asp:TextBox>
        <p>
            <asp:TextBox ID="txtPhoneNumber" runat="server" style="z-index: 1; left: 229px; top: 244px; position: absolute; height: 18px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblAddress" runat="server" style="z-index: 1; left: 67px; top: 209px; position: absolute" Text="Address"></asp:Label>
            <asp:Label ID="lblPhoneNumber" runat="server" style="z-index: 1; left: 67px; top: 246px; position: absolute" Text="PhoneNumber"></asp:Label>
        </p>
        <asp:TextBox ID="txtName" runat="server" style="z-index: 1; left: 230px; top: 172px; position: absolute; margin-top: 0px"></asp:TextBox>
        <p>
            <asp:Label ID="lblCampus" runat="server" style="z-index: 1; left: 65px; top: 302px; position: absolute; width: 78px; height: 21px" Text="Campus"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 228px; position: absolute; height: 18px; top: 300px">
                <asp:ListItem>Main</asp:ListItem>
                <asp:ListItem>TUCC</asp:ListItem>
                <asp:ListItem>Ambler</asp:ListItem>
                <asp:ListItem>Tokyo</asp:ListItem>
                <asp:ListItem>Rome</asp:ListItem>
            </asp:DropDownList>
        </p>--%>
        <asp:GridView ID="gvBooks" runat="server" style="z-index: 1; left: 135px; top: 271px; position: absolute; height: 279px; 
        width: 735px; text-align: right; margin-top: 0px; right: 150px;" AutoGenerateColumns="False" >
            <Columns>
                <asp:TemplateField HeaderText="Select Book">
                    
                    <EditItemTemplate>
                    <asp:RequiredFieldValidator ID = "chkSelect" runat= "server" ErrorMessage="Hi" >
                    </asp:RequiredFieldValidator>
                    

                        </EditItemTemplate>
                    <ItemTemplate>
                        

                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Title" DataField="Title" SortExpression="Title" />
                <asp:BoundField HeaderText="Author" DataField="Authors" SortExpression="Author"/>
                <asp:BoundField HeaderText="ISBN" DataField="ISBN" SortExpression="ISBN" />
                <asp:TemplateField HeaderText="Book Type">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlBookType" runat="server">
                            <asp:ListItem Value ="PaperBack">PaperBack</asp:ListItem>
                            <asp:ListItem Value ="HardCover">HardCover</asp:ListItem>
                            <asp:ListItem Value ="eBook">eBook</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rent or Buy">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlBookOption" runat="server">
                            <asp:ListItem Value="Rent">Rent</asp:ListItem>
                            <asp:ListItem Value="Buy">Buy</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


        <asp:GridView ID="gvOutputGridview" runat="server" style="z-index: 1; left: 133px; top: 690px; position: absolute; height: 196px;
         width: 728px; text-align: right; margin-top: 0px; right: 449px;"

             AutoGenerateColumns="False" ShowFooter="True"> 
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                <asp:BoundField DataField="Title" HeaderText="Author" />
                <asp:BoundField DataField="Type" HeaderText="Type" />
                <asp:BoundField DataField="BuyandRent" HeaderText="BuyandRent" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" />
                
            </Columns>
        </asp:GridView>

         
        <p>
            &nbsp;</p>


    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>


   <asp:Button Text="Submit"  ID="btnSubmit" runat="server" BackColor="#6699FF" BorderColor="Yellow" OnClick="btnSubmit_Click"
        style="margin-left: 901px; z-index: 1; left: -418px; top: 603px; position: absolute; text-align: center;" Height="56px" Width="54px" />

    
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="gvTotalQuantityRented" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 227px; top: 1062px; position: absolute; height: 133px; width: 216px">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="TotalQuantityRented" HeaderText="TotalQuantityRented" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="gvTotalSales" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 472px; top: 1064px; position: absolute; height: 133px; width: 145px">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="TotalSales" HeaderText="TotalSales" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnManagement" runat="server" OnClick="btnManagement_Click" style="z-index: 1; left: 441px; top: 962px; position: absolute" Text="Management" />
        <p>
            <asp:GridView ID="gvTotalQuantitySold" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 677px; top: 1065px; position: absolute; height: 133px; width: 196px">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="TotalQuantitySold" HeaderText="TotalQuantitySold" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>

    </form>
    
</body>
</html>
