using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace YF.DAL
{
    public class Order
    {
        public static bool add(YF.Model.Order order)
        {
            bool result = false;
            string strsql = "insert into t_order (id,userid,amount,state,adddate) values ('" + order.Id + "'," + order.User.Id + "," + order.Amount + ", " + order.State + ",'" + order.Adddate + "')";
            int i = 0;
            i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0)
            {
                result = true;
            }
            return result;
        }

        public static List<YF.Model.Order> list(int userid)
        {
            string strsql = "select * from t_order where userid=" + userid + " order by adddate desc";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dotolist(dt);
        }

        public static List<YF.Model.Order> listall()
        {
            string strsql = "select * from t_order order by adddate desc";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dotolist(dt);
        }

        public static List<YF.Model.Order> Dotolist(DataTable dt)
        {
            List<YF.Model.Order> list = new List<Model.Order>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                YF.Model.Order order = new Model.Order();
                order.Id = dt.Rows[i]["id"].ToString();

                YF.Model.User user = YF.DAL.User.Getuser(int.Parse(dt.Rows[i]["userid"].ToString()));
                order.User = user;

                order.Amount = int.Parse(dt.Rows[i]["amount"].ToString());
                order.State = int.Parse(dt.Rows[i]["state"].ToString());
                order.Adddate = DateTime.Parse(dt.Rows[i]["adddate"].ToString());
                list.Add(order);
            }
            return list;
        }
        public static bool updatestate(string orderid,int state)
        {
            bool result = false;
            string strsql = "update t_order set state="+state+" where id='" + orderid + "'";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }
    }
}
