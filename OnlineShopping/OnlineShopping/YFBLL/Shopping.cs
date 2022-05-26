using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using YF;

namespace YF.BLL
{
    public class Shopping
    {
        public static bool add(YF.Model.Shopping shopping)
        {
            return YF.DAL.Shopping.add(shopping);
        }
        public static List<YF.Model.Shopping> list(string orderid)
        {
            return YF.DAL.Shopping.list(orderid);
        }

        public static List<YF.Model.Shopping> list(int userid)
        {
            return YF.DAL.Shopping.list(userid);
        }
        public static List<YF.Model.Shopping> list_state1(int goodsid)
        {
            return YF.DAL.Shopping.list_state1(goodsid);
        }

        public static List<YF.Model.Shopping> list(int goodsid, int userid, int state)
        {
            return YF.DAL.Shopping.list(goodsid, userid, state);
        }

        public static bool updatenum(int goodsid, int userid, int state) 
        {
            return YF.DAL.Shopping.updatenum(goodsid, userid, state);
        }

        public static bool update_afterorder(string orderid, int userid, int state)
        {
            return YF.DAL.Shopping.update_afteroreder(orderid, userid, state);
        }

        public static bool del(int id)
        {
            return YF.DAL.Shopping.del(id);
        }
    }
}
