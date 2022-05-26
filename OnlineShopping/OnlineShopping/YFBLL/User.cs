using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YF.BLL
{
    public class User
    {
        public static List<YF.Model.User> list()
        {
            return YF.DAL.User.List();
        }
        public static YF.Model.User GetUser(int id)
        {
            return YF.DAL.User.Getuser(id);
        }
        public static YF.Model.User Getuser(string username)
        {
            return YF.DAL.User.Getuser(username);
        }
        public static bool add(YF.Model.User user)
        {
            return YF.DAL.User.add(user);
        }
        public static bool login(string username,string password)
        {
            return YF.DAL.User.login(username, password);
        }
        public static bool update(YF.Model.User user)
        {
            return YF.DAL.User.update(user);
        }
        public static bool del(int id)
        {
            return YF.DAL.User.del(id);
        }
        public static bool Search(string username)
        {
            return YF.DAL.User.Search(username);
        }
    }
}
