using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using YF.Model;
using YF.DAL;

namespace YF.BLL
{
    public class Goods
    {
        public static bool add(YF.Model.Goods goods)
        {
            return YF.DAL.Goods.add(goods);
        }

        public static List<YF.Model.Goods> list()
        {
            return YF.DAL.Goods.list();
        }

        public static List<YF.Model.Goods> list_state1()
        {
            return YF.DAL.Goods.list_state1();
        }

        public static YF.Model.Goods GetGoods(int id)
        {
            return YF.DAL.Goods.GetGoods(id);
        }



        public static bool update(YF.Model.Goods goods)
        {
            return YF.DAL.Goods.update(goods);
        }

        public static bool del(int goodsid)
        {
            return YF.DAL.Goods.del(goodsid);
        }
    }
}
