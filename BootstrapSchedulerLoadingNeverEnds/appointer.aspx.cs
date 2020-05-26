using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Intranet_appoint_appointer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {

      
    }

    protected void BootstrapScheduler1_InitNewAppointment(object sender, DevExpress.XtraScheduler.AppointmentEventArgs e)
    {
        DateTime date1 = new DateTime(2020,06,04);
        DateTime date2 = new DateTime(2020, 6, 16);
        DateTime date3 = new DateTime(2020, 6, 17);
        DateTime date4 = new DateTime(2020, 6, 24);

        // if (e.Appointment.Start>date1)
        e.Appointment.Subject = Session["user_fullname"] + " MDM-Termin";
    }

    protected void BootstrapScheduler1_AllowAppointmentEdit(object sender, DevExpress.XtraScheduler.AppointmentOperationEventArgs e)
    {
        if (e.Appointment.Subject != Session["user_fullname"] + " MDM-Termin" ) e.Allow = false;
        //
    }

    protected void BootstrapScheduler1_AllowAppointmentDelete(object sender, DevExpress.XtraScheduler.AppointmentOperationEventArgs e)
    {
        if (e.Appointment.Subject != Session["user_fullname"] + " MDM-Termin" ) e.Allow = false;
    }

   
}