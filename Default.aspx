<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DynamicCV.Default" %>
<%@ Import Namespace="DynamicCV" %>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Entity CV Projesi</title>
    <link href="web/styles.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="web/css/prettyPhoto.css" type="text/css" media="screen" charset="utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href='web/fontawesome/css/all.min.css' rel='stylesheet' type='text/css'>
    <script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js?ver=3.3"></script>
    <script type="text/javascript" src="web/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="web/js/jquery.easing.1.3.js"></script>
</head>

<body>
    <div id="header">
        <div id="logo">
            <span>
            <h2>BT</h2>
            </span>
        </div>
        <ul id="main-menu">
            <li><a href="#about"><i class="fas fa-user"></i>Hakkımda</a></li>
            <li><a href="#experience"><i class="far fa-star"></i>Tecrübeler</a></li>
            <li><a href="#work"><i class="fas fa-briefcase"></i>Çalışmalar</a></li>
            <li><a href="#connect"><i class="fas fa-map-marker"></i>Bağlantılar</a></li>
            <li><a href="#connect"><i class="fas fa-info"></i>Yardım</a></li>
        </ul>
    </div>
    <div id="container">
        <div id="about">
            <h1>Hakkımda</h1>
            <div class="top-divider"></div>
            <div class="content">
                <img src="https://avatars.githubusercontent.com/u/43934527?s=400&u=4e040a8d780299728dd7010878118c7627ea7085&v=4" />
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <h2 class="text-bold">
                            <%# Eval("BILGILER") %>
                        </h2>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <p>
                            <%# Eval("EGITIM") %>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
                <ul id="service-icons">
                    <li class="services-design">Design</li>
                    <li class="services-mobile">Mobile</li>
                    <li class="services-film">Film</li>
                    <li class="services-photo">Photo</li>
                </ul>
            </div>
            <div class="bottom-divider"></div>
        </div>
        <!--End About Section-->
        <!--Begin Experience Section-->
        <div id="experience">
            <h1>Tecrübeler</h1>
            <div class="top-divider"></div>
            <div class="content">
                <div class="col">
                    <h2>İş Deneyimleri</h2>
                    <p>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <%# Eval("ISDENEYIMLERI") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                </div>

                <div class="col col-mid">
                    <h2>Yetkinlikler</h2>
                    <p>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <i class="fas fa-code"></i>
                                <%# Eval("YETENEK") %>:
                                <%# Eval("DERECE") %>
                                <br />
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                </div>

                <div class="col">
                    <h2>Description of Work</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam risus, dignissim pharetra sagittis sed, adipiscing nec felis. Maecenas non nulla eget ligula semper aliquet. Pellentesque adipiscing pulvinar tortor, a adipiscing felis commodo in. Vestibulum dui magna, mattis in bibendum a, congue vitae lectus. In eu odio tortor, vel congue lacus. Donec viverra viverra eros, in egestas ligula adipiscing non. Morbi et ultricies sapien. Duis metus odio, commodo in tempor quis, euismod et ligula. Vivamus tristique condimentum </p>
                </div>
            </div>
            <div class="bottom-divider"></div>
        </div>
        <!--End Experience Section-->
        <!--Begin Work Section-->
        <div id="work">
            <h1>Çalışmalar</h1>
            <div class="top-divider"></div>
            <div class="content">
                <ul id="work-thumbs">
                    <asp:Repeater ID="Repeater5" runat="server">
                        <ItemTemplate>
                            <li><a href=" <%# Eval("ADRES") %>" rel="prettyPhoto[1]" title="Image Description">
                                <img style="max-width: 400px" src=" <%# Eval("ADRES") %>"></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="bottom-divider"></div>
        </div>
        <div id="connect">
            <h1>Bağlantı Kur</h1>
            <div class="top-divider"></div>
            <div class="content">
                <div id="form">
                    <form action="#" method="post" runat="server">
                        <asp:TextBox name="name" CssClass="name" ID="TextBox1" runat="server" placeholder="Adınız"></asp:TextBox>
                        <asp:TextBox name="email" CssClass="email" ID="TextBox2" runat="server" placeholder="Email Adresiniz"></asp:TextBox>
                        <asp:TextBox name="subject" ID="TextBox3" runat="server" placeholder="Konu"></asp:TextBox>
                        <asp:TextBox name="message" CssClass="message" Height="50px" ID="TextBox4" runat="server" placeholder="Mesajınız"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="submit" OnClick="Button1_Click" />
                    </form>
                </div>
                <div>
                    <h2>Bağlantılar:</h2>
                    <ul>
                        <li><a href="https://berkctezc.medium.com/" target="_blank">Medium</a></li>
                        <li><a href="https://github.com/berkctezc/" target="_blank">Github</a></li>
                        <li><a href="https://twitter.com/berkctezc" target="_blank">Twitter</a></li>
                        <li><a href="https://www.linkedin.com/in/berkctezc/" target="_blank">LinkedIn</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--End Connect Section-->
    </div>
    <!-- The JavaScript -->
    <script type="text/javascript">$(function () { $('#main-menu li a').bind('click', function (event) { var $anchor = $(this); $('html, body').stop().animate({ scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'); event.preventDefault(); }); }); $(document).ready(function () { $("a[rel^='prettyPhoto']").prettyPhoto({ social_tools: false, deeplinking: false }); });</script>
</body>
