using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using YF;   

namespace YF.BLL
{
    public class Order
    {
        public static bool add(YF.Model.Order order)
        {
            return YF.DAL.Order.add(order);
        }

        public static List<YF.Model.Order> list(int userid)
        {
            return YF.DAL.Order.list(userid);
        }

        public static List<YF.Model.Order> listall()
        {
            return YF.DAL.Order.listall();
        }
        public static bool updatestate(string orderid,int state)
        {
            return YF.DAL.Order.updatestate(orderid, state);
        }
    }
}
