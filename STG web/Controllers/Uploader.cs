using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using System.Xml;

namespace STG_web.Controllers
{
    public class Uploader
    {
        public static string upolad(Xml file) {

            if (file != null)
            {
                var name = "Schools";
                
                return "Success";
            }
            else
            {
                return "Error!";
            }
        }


    }


}