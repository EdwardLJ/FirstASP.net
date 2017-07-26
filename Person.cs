using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC.Models
{
    public class Person
    {
        public Person() 
        { 
        
        }
        private int id;    //id
        public int Id
        {
            get { return id; }
            set { id = value; }
        }


        private string userName;    //登录名
        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        private string passWord;    //密码
        public string PassWord
        {
            get { return passWord; }
            set { passWord = value; }
        }

        private string nickName;    //别名
        public string NickName
        {
            get { return nickName; }
            set { nickName = value; }
        }

        private int age;            //年龄
        public int Age
        {
            get { return age; }
            set { age = value; }
        }

        private string dep;         //系别
        public string Dep
        {
            get { return dep; }
            set { dep = value; }
        }

        private string pro;         //专业
        public string Pro
        {
            get { return pro; }
            set { pro = value; }
        }

        private int telphone;       //电话
        public int Telphone
        {
            get { return telphone; }
            set { telphone = value; }
        }

      
        

    }
}