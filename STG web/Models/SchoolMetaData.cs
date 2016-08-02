using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Xml.Serialization;


namespace STG_web.Models
{
    [Serializable]
    [XmlRoot("School")]
    public class SchoolMetaData
    {
        [XmlElement("Id")]
        public int Id { get; set; }
        [XmlElement("Name")]
        public string Name { get; set; }
        [XmlElement("City")]
        public string City { get; set; }
        [XmlElement("Country")]
        public string Country { get; set; }
        [XmlElement("Address")]
        public string Address { get; set; }
        [XmlElement("AspNetUsersId")]
        public string AspNetUsersId { get; set; }

    }

    [MetadataType(typeof(SchoolMetaData))]
    public partial class School {

    }

}