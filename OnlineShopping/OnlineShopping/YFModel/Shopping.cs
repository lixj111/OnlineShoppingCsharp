using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YF.Model
{
    public class Shopping
    {
        private int id;
        public int Id { get => id; set => id = value; }

        private YF.Model.Goods goods;
        public Goods Goods { get => goods; set => goods = value; }

        private YF.Model.User user;
        public User User { get => user; set => user = value; }

        private YF.Model.Order order;
        public Order Order { get => order; set => order = value; }
       
        private int num;
        public int Num { get => num; set => num = value; }

        private int state;
        public int State { get => state; set => state = value; }

        private DateTime adddate;
        public DateTime Adddate { get => adddate; set => adddate = value; }
        
    }
}
