using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;


namespace YF.DAL
{
    /// <summary>
    /// 用户数据访问类
    /// </summary>
    public class User
    {
        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool add(YF.Model.User user)
        {
            bool result = false;
            string strsql = "insert into t_user (username,password,name,address,sex,mobile,email,qq,state,adddate) values ('"+user.Username+ "','"+ user.Password+ "','"+user.Name+ "','"+user.Address+ "',"+user.Sex+ ",'"+user.Mobile+ "','"+user.Email+ "','"+user.Qq+ "',"+user.State+ ",'"+user.Adddate+"')";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }

        public static bool login(string username,string password)
        {
            bool result = false;
            string strsql = "select * from t_user where username='" + username + "'and password='"+password+"'";
            DataTable dataTable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (dataTable.Rows.Count != 0)
            {
                result = true;
            }
            else { result = false; }
            return result;

        }

        public static List<YF.Model.User> List()
        {
            string strsql = "select * from t_user order by id desc";
            DataTable dt = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dttolist(dt);
        }

        public static List<YF.Model.User> Dttolist(DataTable dt)
        {
            List<YF.Model.User> list = new List<Model.User>();
            for(int i =0;i<dt.Rows.Count;i++)
            {
                YF.Model.User user = new Model.User();
                user.Id = int.Parse(dt.Rows[i]["id"].ToString());
                user.Username = dt.Rows[i]["username"].ToString();
                user.Password = dt.Rows[i]["password"].ToString();
                user.Name = dt.Rows[i]["name"].ToString();
                user.Address = dt.Rows[i]["address"].ToString();
                user.Sex = int.Parse(dt.Rows[i]["sex"].ToString());
                user.Mobile = dt.Rows[i]["mobile"].ToString();
                user.Email = dt.Rows[i]["email"].ToString();
                user.Qq = dt.Rows[i]["qq"].ToString();
                user.State = int.Parse(dt.Rows[i]["state"].ToString());
                user.Adddate = DateTime.Parse(dt.Rows[i]["adddate"].ToString());
                list.Add(user);
            }
            return list;
        }
        public static YF.Model.User Getuser(int id)
        {
            YF.Model.User user = new Model.User();
            string strsql = "select * from t_user where id=" + id + "";
            DataTable dataTable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (dataTable.Rows.Count != 0)
            {
                user.Id = int.Parse(dataTable.Rows[0]["id"].ToString());
                user.Username = dataTable.Rows[0]["username"].ToString();
                user.Password = dataTable.Rows[0]["password"].ToString();
                user.Name = dataTable.Rows[0]["name"].ToString();
                user.Address = dataTable.Rows[0]["address"].ToString();
                user.Sex = int.Parse(dataTable.Rows[0]["sex"].ToString());
                user.Mobile = dataTable.Rows[0]["mobile"].ToString();
                user.Email = dataTable.Rows[0]["email"].ToString();
                user.Qq = dataTable.Rows[0]["qq"].ToString();
                user.State = int.Parse(dataTable.Rows[0]["state"].ToString());
                user.Adddate= DateTime.Parse(dataTable.Rows[0]["adddate"].ToString());
            }
            return user;
        }

        //重构函数GetUser
        public static YF.Model.User Getuser(string username)
        {
            YF.Model.User user = new Model.User();
            string strsql = "select * from t_user where username='" + username + "'";
            DataTable dataTable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (dataTable.Rows.Count != 0)
            {
                user.Id = int.Parse(dataTable.Rows[0]["id"].ToString());
                user.Username = dataTable.Rows[0]["username"].ToString();
                user.Password = dataTable.Rows[0]["password"].ToString();
                user.Name = dataTable.Rows[0]["name"].ToString();
                user.Address = dataTable.Rows[0]["address"].ToString();
                user.Sex = int.Parse(dataTable.Rows[0]["sex"].ToString());
                user.Mobile = dataTable.Rows[0]["mobile"].ToString();
                user.Email = dataTable.Rows[0]["email"].ToString();
                user.Qq = dataTable.Rows[0]["qq"].ToString();
                user.State = int.Parse(dataTable.Rows[0]["state"].ToString());
                user.Adddate = DateTime.Parse(dataTable.Rows[0]["adddate"].ToString());
            }
            return user;
        }
        public static bool update(YF.Model.User user) 
        {
            bool result = false;
            string strsql = "update t_user set password='"+user.Password+"',name='"+user.Name+"',address='"+user.Address+"',sex="+user.Sex+",mobile='"+user.Mobile+"',email='"+user.Email+"',qq='"+user.Qq+"',state="+user.State+" where id="+user.Id+"";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }
        public static bool del(int id)
        {
            bool result = false;
            string strsql = "delete from t_user where id=" + id + "";
            int i = YF.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strsql);
            if (i > 0) { result = true; }
            return result;
        }
        public static bool Search(string username)
        {
            bool result = false;
            string strsql = "select * from t_user where username='"+username+"'";
            DataTable dataTable = YF.MsSqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (dataTable.Rows.Count == 0)
            {
                result = true;
            }
            else { result = false; }
            return result;
        }

        
    }
}
