﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace STG_web.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<Teacher> Teacher { get; set; }
        public virtual DbSet<School> School { get; set; }
        public virtual DbSet<TeacherSchool> TeacherSchool { get; set; }
        public virtual DbSet<Group> Group { get; set; }
        public virtual DbSet<Subject> Subject { get; set; }
        public virtual DbSet<GroupSubjectTeacher> GroupSubjectTeacher { get; set; }
        public virtual DbSet<RoomType> RoomType { get; set; }
        public virtual DbSet<Room> Room { get; set; }
        public virtual DbSet<Timetable> Timetable { get; set; }
        public virtual DbSet<UnavaliableHours> UnavaliableHours { get; set; }
    }
}
