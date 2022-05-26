using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace YF.DAL
{
    public class Shopping
    {
        public static bool add(YF.Model.Shopping shopping)
        {
            bool result = false;
            string strsql = "insert into t_shopping (goodsid,userid,orderid,num,state,adddate) values (" + shopping.Goods.Id + "," + shopping.User.Id + ",''," + shopping.Num + "," + shopping.State + ",'" + shopping.Adddate + "')";
            int i = 0;
            i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0)
            {
                result = true;
            }
            return result;
        }

        public static List<YF.Model.Shopping> list(int userid)
        {
            string strsql = "select * from t_shopping where userid="+userid+" and state=0";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dotolist(dt);
        }

        public static List<YF.Model.Shopping> list(string orderid)
        {
            string strsql = "select * from t_shopping where orderid='" +orderid + "' and state=1";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dotolist(dt);
        }

        public static List<YF.Model.Shopping> list_state1(int goodsid)
        {
            string strsql = "select * from t_shopping where goodsid = " + goodsid + " and state=" + 1 + "";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dotolist(dt);
            

        }

        public static List<YF.Model.Shopping> list(int goodsid,int userid,int state)
        {
            string strsql = "select * from t_shopping where goodsid="+goodsid+" and userid="+userid+" and state="+state+"";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dotolist(dt);
        }

        public static List<YF.Model.Shopping> Dotolist(DataTable dt)
        {
            List<YF.Model.Shopping> list = new List<Model.Shopping>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                YF.Model.Shopping shopping = new Model.Shopping();
                shopping.Id = int.Parse(dt.Rows[i]["id"].ToString());
                YF.Model.Goods goods = YF.DAL.Goods.GetGoods(int.Parse(dt.Rows[i]["goodsid"].ToString()));
                shopping.Goods = goods;
                YF.Model.User user = YF.DAL.User.Getuser(int.Parse(dt.Rows[i]["userid"].ToString()));
                shopping.User = user;
                shopping.Num = int.Parse(dt.Rows[i]["num"].ToString());

                shopping.State = int.Parse(dt.Rows[i]["state"].ToString());
                shopping.Adddate = DateTime.Parse(dt.Rows[i]["adddate"].ToString());
                list.Add(shopping);
            }
            return list;
        }

        public static bool updatenum(int goodsid, int userid, int state)
        {
            bool result = false;
            string strsql = "update t_shopping set num=num+1 where goodsid=" + goodsid + " and userid="+userid+" and state="+state+"";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }

        public static bool update_afteroreder(string orderid, int userid, int state)
        {
            bool result = false;
            string strsql = "update t_shopping set orderid='"+orderid+"',state=1 where userid=" + userid + " and state=" + state + "";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }

        public static bool del(int id)
        {
            bool result = false;
            string strsql = "delete from t_shopping where id=" + id + "";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }
    }
}
