//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TechnoServise
{
    using System;
    using System.Collections.Generic;
    
    public partial class Users
    {
        public int userID { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public Nullable<int> TechnicianID { get; set; }
    
        public virtual Technician Technician { get; set; }
    }
}
