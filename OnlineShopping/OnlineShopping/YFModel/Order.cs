using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YF.Model
{
    public class Order
    {
        private string id;
        public string Id { get => id; set => id = value; }

        private YF.Model.User user;
        public User User { get => user; set => user = value; }

        private int amount;
        public int Amount { get => amount; set => amount = value; }

        private int state;
        public int State { get => state; set => state = value; }

        private DateTime adddate;
        public DateTime Adddate { get => adddate; set => adddate = value; }

    }
}
