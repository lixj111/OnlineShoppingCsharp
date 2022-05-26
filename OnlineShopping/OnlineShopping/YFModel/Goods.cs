using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YF.Model
{
    public class Goods
    {
        private int id;
        public int Id { get => id; set => id = value; }

        private string title;
        public string Title { get => title; set => title = value; }

        private int price;
        public int Price { get => price; set => price = value; }
       
        private int num;
        public int Num { get => num; set => num = value; }

        private string img;
        public string Img { get => img; set => img = value; }

        private string detail;
        public string Detail { get => detail; set => detail = value; }

        private int state;
        public int State { get => state; set => state = value; }

        private DateTime adddate;
        public DateTime Adddate { get => adddate; set => adddate = value; }
    }
}
