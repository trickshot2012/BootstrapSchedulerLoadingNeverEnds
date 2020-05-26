<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/BodeIntranetLayout.master" AutoEventWireup="true" CodeFile="appointer.aspx.cs" Inherits="Intranet_appoint_appointer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">
    <asp:Panel ID="Panel1" Visible="false" runat="server">
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <div id="loader" class="center"></div>
      <div class="text-center">
        <asp:Label ID="LabelTopic" runat="server" Text="MDM-Terminplaner" Font-Size="XX-Large"></asp:Label>
    </div>
    <br />
    <dx:BootstrapScheduler ID="BootstrapScheduler1" OnAllowAppointmentDelete="BootstrapScheduler1_AllowAppointmentDelete" OnAllowAppointmentEdit="BootstrapScheduler1_AllowAppointmentEdit" Start="2020-06-01" End="2020-06-24" OnInitNewAppointment="BootstrapScheduler1_InitNewAppointment" AppointmentDataSourceID="SqlDataSource_Appointment" ResourceDataSourceID="SqlDataSource_Resources" runat="server" ActiveViewType="WorkWeek" OptionsEditing-AllowAppointmentEdit="Custom" OptionsEditing-AllowAppointmentDelete="Custom">
        <Storage>
            <Appointments AutoRetrieveId="true">
                <Mappings AppointmentId="UniqueID" Start="StartDate" End="EndDate"
                    Subject="Subject" />
            </Appointments>
        </Storage>
        <Views>
            <WorkWeekView>
                <VisibleTime Start="09:00:00" End="18:00:00" />
            </WorkWeekView>
            <DayView Enabled="false"></DayView>
            <WeekView Enabled="false" />
            <MonthView Enabled="false" />
            <TimelineView Enabled="false" />
            <AgendaView Enabled="false" />
        </Views>
    </dx:BootstrapScheduler>
    <asp:SqlDataSource ID="SqlDataSource_Resources" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [Resources]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Appointment" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" DeleteCommand="DELETE FROM [Appointments] WHERE [UniqueID] = @UniqueID" InsertCommand="INSERT INTO [Appointments] ([Type], [StartDate], [EndDate], [AllDay], [Subject], [Location], [Description], [Status], [Label], [ResourceID], [ResourceIDs], [ReminderInfo], [RecurrenceInfo]) VALUES (@Type, @StartDate, @EndDate, @AllDay, @Subject, @Location, @Description, @Status, @Label, @ResourceID, @ResourceIDs, @ReminderInfo, @RecurrenceInfo)" SelectCommand="SELECT * FROM [Appointments]" UpdateCommand="UPDATE [Appointments] SET [Type] = @Type, [StartDate] = @StartDate, [EndDate] = @EndDate, [AllDay] = @AllDay, [Subject] = @Subject, [Location] = @Location, [Description] = @Description, [Status] = @Status, [Label] = @Label, [ResourceID] = @ResourceID, [ResourceIDs] = @ResourceIDs, [ReminderInfo] = @ReminderInfo, [RecurrenceInfo] = @RecurrenceInfo WHERE [UniqueID] = @UniqueID">
        <DeleteParameters>
            <asp:Parameter Name="UniqueID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="Int32" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime" />
            <asp:Parameter Name="AllDay" Type="Boolean" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Label" Type="Int32" />
            <asp:Parameter Name="ResourceID" Type="Int32" />
            <asp:Parameter Name="ResourceIDs" Type="String" />
            <asp:Parameter Name="ReminderInfo" Type="String" />
            <asp:Parameter Name="RecurrenceInfo" Type="String" />

        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="Int32" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime" />
            <asp:Parameter Name="AllDay" Type="Boolean" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Label" Type="Int32" />
            <asp:Parameter Name="ResourceID" Type="Int32" />
            <asp:Parameter Name="ResourceIDs" Type="String" />
            <asp:Parameter Name="ReminderInfo" Type="String" />
            <asp:Parameter Name="RecurrenceInfo" Type="String" />

            <asp:Parameter Name="UniqueID" Type="Int32" />

        </UpdateParameters>

    </asp:SqlDataSource>
</asp:Content>

