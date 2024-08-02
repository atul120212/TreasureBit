<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="welcome_user.aspx.cs" Inherits="Treasure.welcome_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <header class="masthead" style="background: url(&quot;assets/img/header-bg.jpg&quot;), url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);"></header>
    <section class="pulse animated" id="services" style="transition: ease-in;margin-top: -55px;">
        <section class="py-4 py-xl-5">
            <div class="container">
                <div class="text-center pulse animated p-4 p-lg-5">
                    <p class="font-weight-bold text-primary mb-2" data-aos="zoom-in-up" data-aos-duration="100" data-aos-delay="100">Welcome</p>
                    <h1 class="font-weight-bold mb-4" data-aos="slide-up"> <% Response.Write(Session["fullname"]); %></h1>
                    <a class="btn btn-primary btn-lg mr-2 py-2 px-4" role="button" data-aos="flip-right" href="#">Explore</a>
                </div>
            </div>
        </section>
        <header></header>
        <div class="container">
            <div class="row" data-aos="fade">
                <div class="col-lg-12 text-center" style="margin-top: 50px;">
                    <h2 class="text-uppercase section-heading" data-aos="fade"><span style="font-weight: normal !important; color: rgb(17, 17, 17);">genre</span></h2>
                    <h3 class="text-muted section-subheading" data-aos="flip-up">Choose Your World according to given categories.</h3>
                </div>
            </div>
            <div class="row text-center" data-aos="zoom-in-up" data-aos-duration="100" data-aos-delay="100">
                <div class="col-md-4" data-bss-hover-animate="pulse" style="margin-top: 10px;"><span class="fa-stack fa-4x"><img data-aos="flip-down" data-aos-duration="100" data-aos-delay="100" src="assets/img/man_16177356.png" width="160" height="120" style="width: 120px;height: 120px;margin-bottom: 10px;"></span>
                    <h4 data-aos="flip-down" data-aos-duration="100" data-aos-delay="100" class="section-heading">Fiction</h4>
                    <p class="text-muted" data-aos="flip-down" data-aos-duration="100" data-aos-delay="100">Fiction is a genre that crafts imaginary worlds and characters, exploring human experiences through creative storytelling across diverse subgenres.</p>
                </div>
                <div class="col-md-4" data-bss-hover-animate="pulse" style="margin-top: 10px;"><span class="fa-stack fa-4x"><img data-aos="flip-down" data-aos-duration="150" data-aos-delay="150" src="assets/img/needs_4968543.png" width="129" height="110" style="width: 120px;height: 120px;margin-bottom: 10px;"></span>
                    <h4 data-aos="flip-down" data-aos-duration="150" data-aos-delay="150" class="section-heading">Non - Fiction</h4>
                    <p class="text-muted" data-aos="flip-down" data-aos-duration="150" data-aos-delay="150">Non-fiction presents factual information, exploring real-life topics like history, science, and biographies to educate and inform readers.</p>
                </div>
                <div class="col-md-4" data-bss-hover-animate="pulse" style="margin-top: 10px;"><span class="fa-stack fa-4x"><img data-aos="flip-down" data-aos-duration="200" data-aos-delay="200" src="assets/img/poetry_5705553.png" width="104" height="92" style="width: 120px;height: 120px;"></span>
                    <h4 data-aos="flip-down" data-aos-duration="200" data-aos-delay="200" class="section-heading" style="margin-top: 10px;">Poetry</h4>
                    <p class="text-muted" data-aos="flip-down" data-aos-duration="200" data-aos-delay="200">A Lyrical and evocative genre that captures emotions and stories through rhythmic and imaginative language, exploring themes of love, nature, and identity.<br><br></p>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-light" id="portfolio" style="margin-top: -28px;padding-top: 0px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading" data-aos="flip-up" data-aos-duration="100" data-aos-delay="100">Portfolio</h2>
                    <h3 class="text-muted section-subheading" data-aos="zoom-in-down" data-aos-duration="100" data-aos-delay="100">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-4 portfolio-item" data-aos="slide-left" data-aos-duration="50" data-aos-delay="50"><a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/book2.jpg">
                    </a>
                    <div class="border rounded portfolio-caption" style="padding-bottom: 29px;">
                        <h4>Threads</h4>
                        <p class="text-muted">Illustration</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item" data-aos="flip-right" data-aos-duration="100" data-aos-delay="100"><a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/book1.jpg">
                    </a>
                    <div class="border rounded portfolio-caption">
                        <h4>Explore</h4>
                        <p class="text-muted">Graphic Design</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-4 portfolio-item" data-aos="flip-left" data-aos-duration="150" data-aos-delay="150"><a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/book5.jpeg">
                    </a>
                    <div class="border rounded portfolio-caption" style="margin-bottom: 8px;padding-bottom: 34px;">
                        <h4>Finish</h4>
                        <p class="text-muted">Identity</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item" data-aos="flip-right"><a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/book3.jpeg">
                    </a>
                    <div class="border rounded portfolio-caption">
                        <h4>Lines</h4>
                        <p class="text-muted">Branding</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item" data-aos="flip-left"><a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/book3.jpg">
                    </a>
                    <div class="border rounded portfolio-caption" style="margin-bottom: 0px;padding-bottom: 39px;">
                        <h4>Southwest</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 portfolio-item" data-aos="flip-right"><a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fa fa-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/book4.jpg">
                    </a>
                    <div class="border rounded portfolio-caption">
                        <h4>Window</h4>
                        <p class="text-muted">Photography</p>
                    </div>
                </div>
            </div>
        </div><button class="btn btn-primary border rounded" type="button" style="text-align: center;">Button</button>
    </section>
    <section id="about" style="padding-top: 12px;margin-top: -49px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center" style="margin-top: 55px;">
                    <h2 class="text-uppercase" data-aos="flip-up" data-aos-duration="50" data-aos-delay="50">Guide</h2>
                    <h3 class="text-muted section-subheading" data-aos="zoom-out" data-aos-duration="100" data-aos-delay="50">Steps to find your Treasure and get back to your brain.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-group timeline" data-aos="fade-up" data-aos-duration="100" data-aos-delay="100">
                        <li class="list-group-item" data-bss-hover-animate="pulse">
                            <div data-aos="fade" data-aos-duration="100" data-aos-delay="100" class="timeline-image"><img class="rounded-circle img-fluid" data-aos="fade" data-aos-duration="100" data-aos-delay="100" src="assets/img/about/hand_12640222.png" style="margin-top: 8px;margin-right: 0px;padding-right: 0px;"></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 data-aos="flip-left" data-aos-duration="100">Step 1</h4>
                                    <h4 data-aos="flip-right" data-aos-duration="100" class="subheading">Tap Journey Path of Reading</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted" data-aos="fade-left" data-aos-duration="100" data-aos-delay="100"><br>Discover your next favorite book by choosing from a diverse range of genres. Let the adventure begin with Treasure Bits!<br><br></p>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item timeline-inverted" data-bss-hover-animate="pulse">
                            <div data-aos="zoom-in-up" data-aos-duration="100" data-aos-delay="100" class="timeline-image"><img class="rounded-circle img-fluid" data-bss-hover-animate="pulse" src="assets/img/about/analyzing_9871680.png" style="margin-left: 2px;padding-top: 0px;margin-top: 4px;padding-right: 0px;margin-right: -5px;"></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 data-aos="flip-right" data-aos-duration="100" data-aos-delay="100">Step 2</h4>
                                    <h4 data-aos="flip-right" data-aos-duration="100" data-aos-delay="100" class="subheading">Analyzing Your choices</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted" data-aos="flip-right" data-aos-duration="200" data-aos-delay="100"><br>Get personalized book recommendations based on your genre preferences with Treasure Bits. Explore your next great read today!<br><br></p>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item" data-bss-hover-animate="pulse">
                            <div data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" class="timeline-image"><img class="rounded-circle img-fluid" data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" src="assets/img/about/book_1754346.png" style="margin-right: -13px;padding-top: 0px;margin-top: -2px;padding-bottom: 3px;margin-bottom: -3px;"></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 data-aos="flip-right" data-aos-duration="100" data-aos-delay="100">Step 3</h4>
                                    <h4 data-aos="flip-right" data-aos-duration="100" data-aos-delay="100" class="subheading">Searching for best Books</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted" data-aos="flip-left" data-aos-duration="200" data-aos-delay="100"><br>Discover the best books tailored to your preferences with Treasure Bits' expert analysis of diverse genres. Start your literary journey today!<br><br></p>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item timeline-inverted" data-bss-hover-animate="pulse">
                            <div data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" class="timeline-image"><img class="rounded-circle img-fluid" data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" src="assets/img/about/reading_4589309.png" style="padding-top: 0px;margin-top: -1px;"></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 data-aos="flip-left" data-aos-duration="100" data-aos-delay="100">Step 4</h4>
                                    <h4 data-aos="flip-left" data-aos-duration="100" data-aos-delay="100" class="subheading">Enjoy the Book</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted" data-aos="flip-right" data-aos-duration="200" data-aos-delay="100"><br>Immerse yourself in captivating stories and enjoy every moment of your reading adventure with Treasure Bits!<br><br></p>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item timeline-inverted">
                            <div data-aos="slide-up" data-aos-duration="100" data-aos-delay="150" class="timeline-image">
                                <h4 data-aos="slide-up" data-aos-duration="100" data-aos-delay="150">Be Part<br>&nbsp;Of Our<br>&nbsp;Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-light" id="team">
        <div class="container">
            <div class="row">
                <div class="col-sm-4" data-bss-hover-animate="pulse">
                    <div class="team-member"><img class="rounded-circle mx-auto" data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" src="assets/img/team/3.jpg">
                        <h4 data-aos="flip-right" data-aos-duration="150" data-aos-delay="150">Kay Garland</h4>
                        <p class="text-muted" data-aos="flip-left" data-aos-duration="200" data-aos-delay="200">Lead Designer</p>
                        <ul class="list-inline social-buttons" data-aos="flip-down" data-aos-duration="250" data-aos-delay="250">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-github" style="font-size: 21px;"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4" data-bss-hover-animate="pulse">
                    <div class="team-member"><img class="rounded-circle mx-auto" data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" src="assets/img/team/Untitled%20design%20(2).png">
                        <h4 data-aos="flip-right" data-aos-duration="150" data-aos-delay="150">Atul Sharma</h4>
                        <p class="text-muted" data-aos="flip-left" data-aos-duration="200" data-aos-delay="200">Software Developer</p>
                        <ul class="list-inline social-buttons" data-aos="flip-down" data-aos-duration="250" data-aos-delay="250">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-github" style="font-size: 21px;"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4" data-bss-hover-animate="pulse">
                    <div class="team-member"><img class="rounded-circle mx-auto" data-aos="slide-up" data-aos-duration="100" data-aos-delay="100" src="assets/img/team/2.jpg">
                        <h4 data-aos="flip-right" data-aos-duration="150" data-aos-delay="150">Diana Pertersen</h4>
                        <p class="text-muted" data-aos="flip-left" data-aos-duration="200" data-aos-delay="200">Lead Developer</p>
                        <ul class="list-inline social-buttons" data-aos="flip-down" data-aos-duration="250" data-aos-delay="250">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-github" style="font-size: 21px;"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3" data-aos="flip-up"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/clients/Untitled%20design%20(3).png"></a></div>
                <div class="col-sm-6 col-md-3" data-aos="flip-down"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/clients/penguin%20(1).png"></a></div>
                <div class="col-sm-6 col-md-3" data-aos="flip-up"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/clients/penguin%20(2).png"></a></div>
                <div class="col-sm-6 col-md-3" data-aos="flip-down"><a href="#"><img class="img-fluid d-block mx-auto" src="assets/img/clients/penguin%20(3).png"></a></div>
            </div>
        </div>
    </section>
    <section data-aos="slide-up" data-aos-duration="50" data-aos-delay="50" id="contact" style="background-image:url('assets/img/map-image.png');">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center" data-aos="fade">
                    <h2 class="text-uppercase section-heading" data-aos="flip-right" data-aos-duration="100" data-aos-delay="100">Contact Us</h2>
                    <h3 class="text-muted section-subheading" data-aos="flip-right" data-aos-duration="150" data-aos-delay="150">Any query and need any book</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form id="contactForm" name="contactForm">
                        <div class="form-row">
                            <div class="col-md-6" data-aos="slide-right">
                                <div class="form-group"><input class="form-control" type="text" id="name" placeholder="Your Name *" required=""><small class="form-text text-danger flex-grow-1 lead"></small></div>
                                <div class="form-group"><input class="form-control" type="email" id="email" placeholder="Your Email *" required=""><small class="form-text text-danger lead"></small></div>
                                <div class="form-group"><input class="form-control" type="tel" placeholder="Your Phone *" required=""><small class="form-text text-danger lead"></small></div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group"><textarea class="form-control" data-aos="slide-left" data-aos-duration="200" data-aos-delay="200" id="message" placeholder="Your Message *" required=""></textarea><small class="form-text text-danger lead"></small></div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div><button class="btn btn-primary btn-xl text-uppercase" data-bss-hover-animate="jello" id="sendMessageButton" type="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
