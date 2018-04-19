using BookLibrary;
using project2;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilities;
namespace project2
{

    public partial class Book : System.Web.UI.Page
    {

        DBConnect objDB = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String strSQL = "SELECT * FROM Books";
                   gvBooks.DataSource = objDB.GetDataSet(strSQL);
                   gvBooks.DataBind();
            }
        }

       
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            ArrayList arrBooks = new ArrayList();

            BookProperty newBook = new BookProperty();

            BookOrder book1 = new BookOrder();

            double finalCost = 0;
            double finalqty = 0;

            for (int row = 0; row < gvBooks.Rows.Count;row++) {

                CheckBox Cbox;
                DropDownList drpBookType;
                DropDownList drpBookOption;
                TextBox txtQuantity;


                Cbox = (CheckBox)gvBooks.Rows[row].FindControl("chkSelect");
                


                if (Cbox.Checked)
                {

                    string BookID = "";

                    newBook = new BookProperty();

                    BookID = gvBooks.Rows[row].Cells[1].Text;

                    newBook.Title = gvBooks.Rows[row].Cells[1].Text;
                    newBook.Author = gvBooks.Rows[row].Cells[2].Text;
                    newBook.ISBN = gvBooks.Rows[row].Cells[3].Text;    

                    drpBookType = (DropDownList)gvBooks.Rows[row].FindControl("ddlBookType");
                    drpBookOption = (DropDownList)gvBooks.Rows[row].FindControl("ddlBookOption");
                    txtQuantity = (TextBox)gvBooks.Rows[row].FindControl("txtQuantity");


                    newBook.Type = drpBookType.SelectedItem.Value;
                    newBook.BuyandRent = drpBookOption.SelectedItem.Value;

                    newBook.Quantity = Convert.ToInt32(txtQuantity.Text);


                    newBook.Price = book1.calculate(newBook.ISBN, newBook.Type, newBook.BuyandRent);


                    newBook.TotalCost = newBook.Quantity * newBook.Price;

                   
                    arrBooks.Add(newBook);


                    newBook.TotalCost = newBook.Quantity * newBook.Price;
                   

                    if (newBook.BuyandRent == "Buy")
                    {
                        book1.updateSales(BookID, Convert.ToInt32(newBook.Quantity), Convert.ToDecimal(newBook.Price));

                    }

                    else if (newBook.BuyandRent == "Rent")
                    {
                        book1.updateRented(BookID, Convert.ToInt32(newBook.Quantity), Convert.ToDecimal(newBook.Price));

                    }

                    finalqty = newBook.Quantity + finalqty;
                    finalCost = newBook.TotalCost + finalCost;

                   
                }
                
            }

            gvOutputGridview.DataSource = arrBooks;
            gvOutputGridview.Columns[0].FooterText = "Totals";
            gvOutputGridview.Columns[5].FooterText = finalqty.ToString();
            gvOutputGridview.Columns[6].FooterText = finalCost.ToString();
          

            gvOutputGridview.DataBind();
              
        }

        protected void btnManagement_Click(object sender, EventArgs e)
        {
            String strSQL = "SELECT * FROM Books";

            gvTotalSales.DataSource = objDB.GetDataSet(strSQL);
            gvTotalSales.DataBind();

            gvTotalQuantityRented.DataSource = objDB.GetDataSet(strSQL);
            gvTotalQuantityRented.DataBind();

            gvTotalQuantitySold.DataSource = objDB.GetDataSet(strSQL);
            gvTotalQuantitySold.DataBind();
        }
    }


    }



