//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestBank.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SavingAccountTxnHistory
    {
        public int TxnID { get; set; }
        public Nullable<int> AccNum { get; set; }
        public string SourceType { get; set; }
        public string TransType { get; set; }
        public decimal Amount { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public Nullable<System.DateTime> TxnDate { get; set; }
    
        public virtual SavingAccountDetail SavingAccountDetail { get; set; }
    }
}
