using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookLibrary
{
    public class BookProperty
    {
        private String title;
        private String isbn;
        private String type;
        private double price;
        private double totalCost;
        private int quantity;
        private String buyorrent;
        private String author;
        

        public String Title
        {
            get { return title; }
            set { title = value; }
        }

        public String Author
        {
            get { return author; }
            set { title = value; }
        }
        public String ISBN
        {
            get { return isbn; }
            set { isbn = value; }
        }

        public String Type
        {
            get { return type; }
            set { type = value; }
        }

        public double Price
        {
            get { return price; }
            set { price = value; }
        }

        public double TotalCost
        {
            get { return totalCost; }
            set { totalCost = value; }

        }

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        public string BuyandRent
        {
            get { return buyorrent; }
            set { buyorrent = value; }
        }
    }
}
