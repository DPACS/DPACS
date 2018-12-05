<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/css/app.css" />
	
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.js"></script>
	<script type="text/javascript" src="/js/app.js"></script>

<title>Insert title here</title>
</head>
<body>
    <section class="hbox stretch">
    <!-- .aside -->
    <aside class="bg-dark aside-sm" id="nav">
      <section class="vbox">
        <header class="dker nav-bar">
          <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav">
            <i class="fa fa-bars"></i>
          </a>
          <a href="#" class="nav-brand" data-toggle="fullscreen">todo</a>
          <a class="btn btn-link visible-xs" data-toggle="class:show" data-target=".nav-user">
            <i class="fa fa-comment-o"></i>
          </a>
        </header>
        <section class="w-f">
          <div class="lter nav-user hidden-xs pos-rlt">            
            <div class="nav-avatar pos-rlt">
              <a href="#" class="thumb-sm avatar animated rollIn" data-toggle="dropdown">
                <img src="images/avatar.jpg" alt="" class="">
                <span class="caret caret-white"></span>
              </a>
              <ul class="dropdown-menu m-t-sm animated fadeInLeft">
              	<span class="arrow top"></span>
                <li>
                  <a href="#">Settings</a>
                </li>
                <li>
                  <a href="profile.html">Profile</a>
                </li>
                <li>
                  <a href="#">
                    <span class="badge bg-danger pull-right">3</span>
                    Notifications
                  </a>
                </li>
                <li class="divider"></li>
                <li>
                  <a href="docs.html">Help</a>
                </li>
                <li>
                  <a href="signin.html">Logout</a>
                </li>
              </ul>
              <div class="visible-xs m-t m-b">
                <a href="#" class="h3">John.Smith</a>
                <p><i class="fa fa-map-marker"></i> London, UK</p>
              </div>
            </div>
            <div class="nav-msg">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <b class="badge badge-white count-n">2</b>
              </a>
              <section class="dropdown-menu m-l-sm pull-left animated fadeInRight">
                <div class="arrow left"></div>
                <section class="panel bg-white">
                  <header class="panel-heading">
                    <strong>You have <span class="count-n">2</span> notifications</strong>
                  </header>
                  <div class="list-group">
                    <a href="#" class="media list-group-item">
                      <span class="pull-left thumb-sm">
                        <img src="images/avatar.jpg" alt="John said" class="img-circle">
                      </span>
                      <span class="media-body block m-b-none">
                        Use awesome animate.css<br>
                        <small class="text-muted">28 Aug 13</small>
                      </span>
                    </a>
                    <a href="#" class="media list-group-item">
                      <span class="media-body block m-b-none">
                        1.0 initial released<br>
                        <small class="text-muted">27 Aug 13</small>
                      </span>
                    </a>
                  </div>
                  <footer class="panel-footer text-sm">
                    <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                    <a href="#">See all the notifications</a>
                  </footer>
                </section>
              </section>
            </div>
          </div>
          <nav class="nav-primary hidden-xs">
            <ul class="nav">
              <li>
                <a href="index.html">
                  <i class="fa fa-eye"></i>
                  <span>Discover</span>
                </a>
              </li>              
              <li class="dropdown-submenu active">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flask"></i>
                  <span>UI kit</span>
                </a>
                <ul class="dropdown-menu">                
                  <li>
                    <a href="buttons.html">Buttons</a>
                  </li>
                  <li>
                    <a href="icons.html">
                      <b class="badge pull-right">302</b>Icons
                    </a>
                  </li>
                  <li>
                    <a href="grid.html">Grid</a>
                  </li>
                  <li>
                    <a href="widgets.html">
                      <b class="badge bg-primary pull-right">8</b>Widgets
                    </a>
                  </li>
                  <li>
                    <a href="components.html">
                      <b class="badge pull-right">18</b>Components
                    </a>
                  </li>
                  <li>
                    <a href="list.html">List groups</a>
                  </li>
                  <li>
                    <a href="table.html">Table</a>
                  </li>
                  <li>
                    <a href="form.html">Form</a>
                  </li>
                  <li>
                    <a href="chart.html">Chart</a>
                  </li>
                  <li>
                    <a href="calendar.html">Fullcalendar</a>
                  </li>
                  <li>
                    <a href="portlet.html">Portlet</a>
                  </li>
                </ul>
              </li>
               <li class="dropdown-submenu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-file-text"></i>
                  <span>Pages</span>
                </a>
                <ul class="dropdown-menu">                
                  <li>
                    <a href="dashboard.html">Dashboard</a>                    
                  </li>
                  <li>
                    <a href="dashboard-1.html">Dashboard one</a>              
                  </li>
                  <li>
                    <a href="dashboard-2.html">Dashboard layout</a>
                  </li>
                  <li>
                    <a href="analysis.html">Analysis</a>
                  </li>
                  <li>
                    <a href="master.html">Master</a>
                  </li>
                  <li>
                    <a href="maps.html">Maps</a>
                  </li>
                  <li>
                    <a href="gallery.html">Gallery</a>              
                  </li>
                  <li>
                    <a href="profile.html">Profile</a>
                  </li>
                  <li>
                    <a href="blog.html">Blog</a>              
                  </li>
                  <li>
                    <a href="invoice.html">Invoice</a>              
                  </li>                  
                  <li>
                    <a href="signin.html">Signin page</a>
                  </li>
                  <li>
                    <a href="signup.html">Signup page</a>
                  </li>
                  <li>
                    <a href="404.html">404 page</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="mail.html">
                  <b class="badge bg-primary pull-right">3</b>
                  <i class="fa fa-envelope-o"></i>
                  <span>Mail</span>
                </a>
              </li>
              <li>
                <a href="tasks.html">
                  <i class="fa fa-tasks"></i>
                  <span>Tasks</span>
                </a>
              </li>
              <li>
                <a href="notes.html">
                  <i class="fa fa-pencil"></i>
                  <span>Notes</span>
                </a>
              </li>
              <li>
                <a href="timeline.html">
                  <i class="fa fa-clock-o"></i>
                  <span>Timeline</span>
                </a>
              </li>
            </ul>
          </nav>
        </section>
        <footer class="footer bg-gradient hidden-xs">
          <a href="modal.lockme.html" data-toggle="ajaxModal" class="btn btn-sm btn-link m-r-n-xs pull-right">
            <i class="fa fa-power-off"></i>
          </a>
          <a href="#nav" data-toggle="class:nav-vertical" class="btn btn-sm btn-link m-l-n-sm">
            <i class="fa fa-bars"></i>
          </a>
        </footer>
      </section>
    </aside>
    <!-- /.aside -->
    <!-- .vbox -->
    <section id="content">
      <section class="vbox">
        <header class="header bg-light dker">
          <p>Buttons</p>
        </header>
        <section class="scrollable wrapper">
          <div class="row">        
            <div class="col-lg-6">
              <h4 class="m-t-xs">Button options</h4>
              <div class="doc-buttons">
                <a href="#" class="btn btn-s-md btn-default">Default</a>                
                <a href="#" class="btn btn-s-md btn-primary">Primary</a>
                <a href="#" class="btn btn-s-md btn-success">Success</a>
                <a href="#" class="btn btn-s-md btn-info">Info</a>
                <a href="#" class="btn btn-s-md btn-warning">Warning</a>
                <a href="#" class="btn btn-s-md btn-danger">Danger</a>
                <a href="#" class="btn btn-s-md btn-white">White</a>
                <a href="#" class="btn btn-s-md btn-white disabled">Disabled</a>
              </div>    
              
              <h4 class="m-t">Button size</h4>
              <p>
                <a href="#" class="btn btn-white btn-lg">Large button</a>
                <a href="#" class="btn btn-default btn-lg">Button</a>
              </p>
              <p>
                <a href="#" class="btn btn-white">Default button</a>
                <a href="#" class="btn btn-default">Button</a>
              </p>
              <p>
                <a href="#" class="btn btn-white btn-sm">Small button</a>
                <a href="#" class="btn btn-default btn-sm">Button</a>
              </p>
              <p>
                <a href="#" class="btn btn-white btn-xs">Extra small button</a>
                <a href="#" class="btn btn-default btn-xs">Button</a>
              </p>
         
              <h4 class="m-t-lg">Button dropdowns</h4>
              <p class="text-muted">Single button dropdowns</p>
              <div class="m-b-sm">
                <div class="btn-group">
                  <button class="btn btn-white dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <div class="btn-group">
                  <button class="btn btn-success dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>
              <div class="m-b-sm">
                <div class="btn-group">
                  <button class="btn btn-white btn-sm dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <div class="btn-group">
                  <button class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>
              <div class="m-b-sm">
                <div class="btn-group">
                  <button class="btn btn-white btn-xs dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <div class="btn-group">
                  <button class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>
              <p class="text-muted">Split button dropdowns &amp; variation </p>
              <div class="m-b-sm">
                <div class="btn-group">
                  <button class="btn btn-white">Action</button>
                  <button class="btn btn-white dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <div class="btn-group dropup">
                  <button class="btn btn-white">Action</button>
                  <button class="btn btn-white dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>

              <h4 class="m-t-lg">Button with icon</h4>
              <p>
                <a href="#" class="btn btn-white"><i class="fa fa-html5"></i> Html5</a>
                <a href="#" class="btn btn-info"><i class="fa fa-css3"></i> CSS3</a>
              </p>            
              <p>
                <a href="#" class="btn btn-white btn-lg btn-block"><i class="fa fa-bars pull-right"></i> Block button with icon</a>
              </p>
              <p>
                <a href="#" class="btn btn-white btn-block"><i class="fa fa-bars pull-left"></i> Block button with icon</a>
              </p>
              <h4 class="m-t-lg">Select Button</h4>
              <div class="select btn-group" data-resize="auto">
                <button type="button" data-toggle="dropdown" class="btn btn-white dropdown-toggle">
                  <span class="dropdown-label" style="width: 63px;">Item One</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                  <li data-value="1"><a href="#">Item One</a></li>
                  <li data-value="2"><a href="#">Item Two</a></li>
                  <li data-value="3" data-fizz="buzz"><a href="#">Item Three</a></li>
                  <li class="divider"></li>
                  <li data-value="4"><a href="#">Item Four</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-6">
              <h4 class="m-t-xs">Rounded button</h4>
              <div class="doc-buttons">
                <a href="#" class="btn btn-s-md btn-default btn-rounded">Default</a>
                <a href="#" class="btn btn-s-md btn-primary btn-rounded">Primary</a>
                <a href="#" class="btn btn-s-md btn-success btn-rounded">Success</a>
                <a href="#" class="btn btn-s-md btn-info btn-rounded">Info</a>
                <a href="#" class="btn btn-s-md btn-warning btn-rounded">Warning</a>
                <a href="#" class="btn btn-s-md btn-danger btn-rounded">Danger</a>
                <a href="#" class="btn btn-s-md btn-white btn-rounded">White</a>
                <a href="#" class="btn btn-s-md btn-white btn-rounded disabled">Disabled</a>
              </div>

              <h4 class="m-t-lg">Button groups</h4>
              <div class="m-b-sm">
                <div class="btn-group">
                  <button type="button" class="btn btn-white">Left</button>
                  <button type="button" class="btn btn-white">Middle</button>
                  <button type="button" class="btn btn-white">Right</button>
                </div>              
              </div>
              <p class="text-muted">Vertical button groups</p>
              <div class="btn-group-vertical m-b-sm">
                <button type="button" class="btn btn-white">Top</button>
                <button type="button" class="btn btn-white">Middle</button>
                <button type="button" class="btn btn-white">Bottom</button>
              </div>
              <p class="text-muted">Nested button groups</p>
              <div class="btn-group m-b-sm">
                <button type="button" class="btn btn-default">1</button>
                <button type="button" class="btn btn-success">2</button>
                <button type="button" class="btn btn-default">3</button>
                <div class="btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    Dropdown
                    <span class="caret"></span>
                  </button>
                    <ul class="dropdown-menu">
                    <li><a href="#">Dropdown link</a></li>
                    <li><a href="#">Dropdown link</a></li>
                    <li><a href="#">Dropdown link</a></li>
                  </ul>
                </div>
              </div>
              <p class="text-muted">Justified button groups</p>
              <div class="m-b-sm">
                <div class="btn-group btn-group-justified">
                  <a href="#" class="btn btn-primary">Left</a>
                  <a href="#" class="btn btn-info">Middle</a>
                  <a href="#" class="btn btn-success">Right</a>
                </div>
              </div>
              <p class="text-muted">Multiple button groups</p>
              <div class="btn-toolbar">
                <div class="btn-group">
                  <button type="button" class="btn btn-default">1</button>
                  <button type="button" class="btn btn-default active">2</button>
                  <button type="button" class="btn btn-default">3</button>
                  <button type="button" class="btn btn-default">4</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-default">5</button>
                  <button type="button" class="btn btn-default">6</button>
                  <button type="button" class="btn btn-default">7</button>
                </div>
                <div class="btn-group">
                  <button type="button" class="btn btn-default">8</button>
                </div>
              </div>
            
              <h4 class="m-t-lg">Button components</h4>
              <p class="text-muted">
                <span>There are a few easy ways to quickly get started with Bootstrap, each one ...</span>
                <span class="text-muted hide" id="moreless"> appealing to a different skill level and use case. Read through to see what suits your particular needs.</span>
              </p>
              <p>
                <button href="#moreless" class="btn btn-sm btn-white" data-toggle="class:show">
                  <i class="fa fa-plus text"></i>
                  <span class="text">More</span>
                  <i class="fa fa-minus text-active"></i>
                  <span class="text-active">Less</span>
                </button>
              </p>
              <p>
                <button class="btn btn-default" id="btn-1" href="#btn-1" data-toggle="class:btn-success">
                  <i class="fa fa-cloud-upload text"></i>
                  <span class="text">Upload</span>
                  <i class="fa fa-check text-active"></i>
                  <span class="text-active">Success</span>
                </button>
                <button class="btn btn-white" data-toggle="button">
                  <i class="fa fa-heart-empty text"></i>
                  <i class="fa fa-heart text-active text-danger"></i>
                </button>
                <button class="btn btn-white" data-toggle="button">
                  <span class="text">
                    <i class="fa fa-thumbs-up text-success"></i> 25
                  </span>
                  <span class="text-active">
                    <i class="fa fa-thumbs-down text-danger"></i> 10
                  </span>
                </button>
              </p>
              <div class="m-b-sm">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-info active">
                    <input type="radio" name="options" id="option1"> <i class="fa fa-check text-active"></i>Male
                  </label>
                  <label class="btn btn-sm btn-success">
                    <input type="radio" name="options" id="option2"> <i class="fa fa-check text-active"></i>Female
                  </label>
                  <label class="btn btn-sm btn-primary">
                    <input type="radio" name="options" id="option3"> <i class="fa fa-check text-active"></i>N/A
                  </label>
                </div>
              </div>
              <div class="m-b-sm">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-sm btn-white">
                    <input type="checkbox" name="options" id="option1"> option1
                  </label>
                  <label class="btn btn-sm btn-white">
                    <input type="checkbox" name="options" id="option2"> option2
                  </label>
                </div>                
              </div>

              <h4 class="m-t-lg">
                <a href="#" class="pull-right text-sm" data-toggle="class:btn-rounded" data-target="#social-buttons a">Toggle</a>
                Social buttons
              </h4>
              <p id="social-buttons">
                <a href="#" class="btn btn-rounded btn-sm btn-twitter"><i class="fa fa-twitter"></i> Twitter</a>
                <a href="#" class="btn btn-rounded btn-sm btn-facebook"><i class="fa fa-facebook"></i> Facebook</a>
                <a href="#" class="btn btn-rounded btn-sm btn-gplus"><i class="fa fa-google-plus"></i> Google+</a>
              </p>

            </div>
          </div>
        </section>
      </section>
      <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
    </section>
    <!-- /.vbox -->
  </section>
    
    
    
</body>
</html>