using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilities;

namespace BookLibrary
{
    public class BookOrder
    {

        DBConnect objDB = new DBConnect();

        public double calculate(string ISBN, string type, string option)
        {

            double total = 0;

            objDB.GetDataSet("SELECT BasePrice from Books WHERE ISBN = '" + ISBN + "'");
            double basePrice = Convert.ToInt32(objDB.GetField("BasePrice", 0));
            

            if (type == "eBook")
            {

                if (option == "Rent")
                {

                    total = basePrice;
                }
                else if (option == "Buy")
                {
                    total = basePrice * 2;
                }

            }

            else if (type == "PaperBack")
            {
                if (option == "Rent")
                {
                    total = basePrice * 3;
                }
                else if (option == "Buy")
                {
                    total = basePrice * 3 * 2 * 2;
                }
            }

            else if (type == "HardCover")
            {
                if (option == "Rent")
                {

                    total = basePrice * 4;
                }
                else if (option == "Buy")
                {
                    total = basePrice * 3 * 5;
                }
            }


            return total;

        }



        public void updateRented(string isbn, int quantity, decimal total)
        {
            objDB.DoUpdate("Update Books SET TotalQuantityRented = TotalQuantityRented + '" + quantity + "'," + "TotalSales = " + (total * quantity) + " WHERE ISBN = ' " + isbn+ " ' ");


        }


   
        public void updateSales (string isbn, int quantity, decimal total)
        {

            objDB.DoUpdate("Update Books SET TotalCost = " + quantity + "'," + "TotalSales = '" + (total * quantity) + "' WHERE ISBN = " + isbn);
        }

        
        public void updateTotalQuantitySold ( string isbn, int quantity, decimal total)
        {

            objDB.DoUpdate("Update Books SET TotalCost = " + quantity + "'," + "TotalQuantitySold= '" + quantity + " 'WHERE ISBN =" + isbn);
        }

    

    }
}
