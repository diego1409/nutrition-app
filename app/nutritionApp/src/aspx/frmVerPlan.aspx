<%@ Page Title="Ver Plan Nutricional" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmVerPlan.aspx.cs" Inherits="nutritionApp.src.aspx.frmVerPlan" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmVerPlan.css" type="text/css" />
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divVerPlan" class="content-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <h1>Plan Nutricional</h1>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col">
                <!-- Card Narrower -->
                <div class="card card-cascade narrower">

                    <!-- Card image -->
                    <div class="view view-cascade overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg"
                            alt="Card image cap">
                        <a>
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>

                    <!-- Card content -->
                    <div class="card-body card-body-cascade">

                        <!-- Label -->
                        <h5 class="pink-text pb-2 pt-1"><i class="fas fa-utensils"></i> Culinary</h5>
                        <!-- Title -->
                        <h4 class="font-weight-bold card-title">Cheat day inspirations</h4>
                        <!-- Text -->
                        <p class="card-text">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                            suscipit laboriosam, nisi ut aliquid ex ea commodi.</p>
                        <!-- Button -->
                        <a class="btn btn-unique">Button</a>

                    </div>

                </div>
                <!-- Card Narrower -->

            </div>
        </div>
    </div>
</asp:Content>