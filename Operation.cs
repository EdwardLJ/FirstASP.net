using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MVC.Models;

namespace MVC.Controllers
{
    public class Operation 
    {
        string str = null;
        SqlConnection conn = null;
        SqlCommand com = null;
      
        //启动
        public Operation()
        {
            str = "myDB";
            var connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings[str];
            conn = new SqlConnection(connString.ConnectionString);          
            com = conn.CreateCommand();
        }
       
        //select all
        public List<Person> SelectStd()
        {
            List<Person> list = new List<Person>();
            com.CommandText = "select * from student";
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Person p = new Person();
                    p.Id = (int)dr["id"];
                    p.UserName = dr["userName"].ToString();
                    p.PassWord = dr["passWord"].ToString();
                    p.NickName = dr["nickName"].ToString();
                    p.Age =(int) dr["age"];
                    p.Dep = dr["dep"].ToString();
                    p.Pro = dr["pro"].ToString();
                    p.Telphone = (int)dr["telphone"];
                    list.Add(p);
                }
            }
            conn.Close();
            return list;
        }

       
        //login
        public bool Login(string userName, string passWord)
        {
            com.CommandText = "select * from student where userName = @userName and passWord = @passWord";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@userName", userName);
            com.Parameters.AddWithValue("@passWord", passWord);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            bool has = dr.HasRows;
            conn.Close();
            return has;
        }

        //SelectNickName
        public string SelectNickName(string userName) 
        {
            string nickName=null;
            com.CommandText = "select * from student where userName = @userName";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@userName",userName);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    nickName = dr["nickName"].ToString();
                }
            }
          
            return nickName;
        }

        //SelectByMsg
        public List<Person> SelectByMsg(string msg)
        {
            List<Person> list = new List<Person>();
            com.CommandText = "select * from student where userName like '%'+@userName+'%'";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@userName", msg);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Person p2 = new Person();
                    p2.Id = (int)dr["id"];
                    p2.UserName = dr["userName"].ToString();
                    p2.PassWord = dr["passWord"].ToString();
                    p2.NickName = dr["nickName"].ToString();
                    p2.Age = (int)dr["age"];
                    p2.Dep = dr["dep"].ToString();
                    p2.Pro = dr["pro"].ToString();
                    p2.Telphone = (int)dr["telphone"];
                    list.Add(p2);
                }
            }
            conn.Close();
            return list;
        }


        //insert
        public void insertStd(Person p)
        {
            com.CommandText = "insert into student values(@userName,@passWord,@nickName,@age,@dep,@pro,@telphone)";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@userName", p.UserName);
            com.Parameters.AddWithValue("@passWord", p.PassWord);
            com.Parameters.AddWithValue("@nickName", p.NickName);
            com.Parameters.AddWithValue("@age",p.Age);
            com.Parameters.AddWithValue("@dep", p.Dep);
            com.Parameters.AddWithValue("@pro", p.Pro);
            com.Parameters.AddWithValue("@telphone",p.Telphone);
            
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();

        }

        //select username
        public bool selectcode(string userName)
        {
            com.CommandText = "select * from student where userName = @userName";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@userName", userName);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            bool has = dr.HasRows;
            conn.Close();
            return has;
        }

        //select before update

        public List<Person> updateByid(string id) 
        {
            
            List<Person> list = new List<Person>();
            com.CommandText = "select * from student where id=@id";
            com.Parameters.AddWithValue("@id", id);
            conn.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Person p = new Person();
                    p.Id =int.Parse( id);
                    p.UserName = dr["userName"].ToString();
                    p.PassWord = dr["passWord"].ToString();
                    p.NickName = dr["nickName"].ToString();
                    p.Age = (int)dr["age"];
                    p.Dep = dr["dep"].ToString();
                    p.Pro = dr["pro"].ToString();
                    p.Telphone = (int)dr["telphone"];
                    list.Add(p);
                }
            }
            conn.Close();
            return list;
        }

        //Update
        public void Update(Person p)
        {
            com.CommandText = "update student set userName=@userName,passWord=@passWord,nickName=@nickName,age=@age,dep=@dep,pro=@pro,telphone=@telphone where id=@id";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@userName", p.UserName);
            com.Parameters.AddWithValue("@passWord", p.PassWord);
            com.Parameters.AddWithValue("@nickName", p.NickName);
            com.Parameters.AddWithValue("@age", p.Age);
            com.Parameters.AddWithValue("@dep", p.Dep);
            com.Parameters.AddWithValue("@pro", p.Pro);
            com.Parameters.AddWithValue("@telphone", p.Telphone);
            com.Parameters.AddWithValue("@id",p.Id);

            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();

        }

        //UpdatePwd
        public void UpdatePwd(string userName,string newPwd) 
        {
            com.CommandText = "update student set passWord = @passWord where userName = @userName";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@passWord",newPwd);
            com.Parameters.AddWithValue("@userName",userName);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
        }

        //Delet
        public void Delet(string id) 
        {
            com.CommandText = "delete from student where id=@id";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@id",id);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
        }
    }
}