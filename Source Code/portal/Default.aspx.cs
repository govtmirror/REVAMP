﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

public partial class _Default : System.Web.UI.Page
{
    public bool bShowAlert;
    protected void Page_Load(object sender, EventArgs e)
    {
        ucLogin.BaseMstr = Master;

        if (!IsPostBack) 
        {
            if (Master.IsLoggedIn()) {
                Master.LogOff();
            }
        }

        bShowAlert = (!IsPostBack);
    }
}