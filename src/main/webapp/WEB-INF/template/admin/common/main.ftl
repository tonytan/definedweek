[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Gebo Admin Panel</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="${base}/resources/admin/bootstrap/css/bootstrap.min.css"  />
            <link rel="stylesheet" href="${base}/resources/admin/bootstrap/css/bootstrap-responsive.min.css"  />
        <!-- jQuery UI theme -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/jquery-ui/css/Aristo/Aristo.css"  />
        <!-- theme color-->
            <link rel="stylesheet" href="${base}/resources/admin/css/blue.css"  id="link_theme" />
        <!-- tooltips-->
            <link rel="stylesheet" href="${base}/resources/admin/lib/jBreadcrumbs/css/BreadCrumb.css"  />
        <!-- tooltips-->
            <link rel="stylesheet" href="${base}/resources/admin/lib/qtip2/jquery.qtip.min.css"  />
		<!-- colorbox -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/colorbox/colorbox.css"  />
        <!-- code prettify -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/google-code-prettify/prettify.css"  />    
        <!-- notifications -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/sticky/sticky.css"  />    
        <!-- aditional icons -->
            <link rel="stylesheet" href="${base}/resources/admin/img/splashy/splashy.css"  />
		<!-- flags -->
            <link rel="stylesheet" href="${base}/resources/admin/img/flags/flags.css"  />	
		<!-- calendar -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/fullcalendar/fullcalendar_gebo.css"  />	
		<!-- datepicker -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/datepicker/datepicker.css"  />
        <!-- tag handler -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/tag_handler/css/jquery.taghandler.css"  />
        <!-- uniform -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/uniform/Aristo/uniform.aristo.css"  />
		<!-- multiselect -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/multi-select/css/multi-select.css"  />
		<!-- enhanced select -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/chosen/chosen.css"  />
        <!-- wizard -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/stepy/css/jquery.stepy.css"  />
        <!-- upload -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/plupload/js/jquery.plupload.queue/css/plupload-gebo.css"  />
		<!-- CLEditor -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/CLEditor/jquery.cleditor.css"  />
		<!-- colorpicker -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/colorpicker/css/colorpicker.css"  />
		<!-- smoke_js -->
            <link rel="stylesheet" href="${base}/resources/admin/lib/smoke/themes/gebo.css"  />
	
		<!-- video player -->
			<link rel="stylesheet" href="../../vjs.zencdn.net/c/video-js.css"  />
			
        <!-- main styles -->
            <link rel="stylesheet" href="${base}/resources/admin/css/style.css"  />
			
            <link href="../../fonts.googleapis.com/css-family=PT+Sans.css"  rel='stylesheet' type='text/css'>
	
        <!-- favicon -->
            <link rel="shortcut icon" href="favicon.ico" />
		
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="${base}/resources/admin/css/ie.css"  />
        <![endif]-->
        	
        <!--[if lt IE 9]>
			<script src="${base}/resources/admin/js/ie/html5.js" ></script>
			<script src="${base}/resources/admin/js/ie/respond.min.js" ></script>
			<script src="${base}/resources/admin/lib/flot/excanvas.min.js" ></script>
        <![endif]-->
		<script>
			//* hide all elements & show preloader
			document.documentElement.className += 'js';
		</script>
    </head>
    <body>
        <div id="loading_layer" style="display:none"><img src="${base}/resources/admin/img/ajax_loader.gif"  alt="" /></div>
		<div class="style_switcher">
			<div class="sepH_c">
				<p>选择颜色:</p>
				<div class="clearfix">
					<a href="javascript:void(0)" class="style_item jQclr blue_theme style_active" title="blue">blue</a>
					<a href="javascript:void(0)" class="style_item jQclr dark_theme" title="dark">dark</a>
					<a href="javascript:void(0)" class="style_item jQclr green_theme" title="green">green</a>
					<a href="javascript:void(0)" class="style_item jQclr brown_theme" title="brown">brown</a>
					<a href="javascript:void(0)" class="style_item jQclr eastern_blue_theme" title="eastern_blue">eastern blue</a>
					<a href="javascript:void(0)" class="style_item jQclr tamarillo_theme" title="tamarillo">tamarillo</a>
				</div>
			</div>
			<div class="sepH_c">
				<p>背景图片:</p>
				<div class="clearfix">
					<span class="style_item jQptrn style_active ptrn_def" title=""></span>
					<span class="ssw_ptrn_a style_item jQptrn" title="ptrn_a"></span>
					<span class="ssw_ptrn_b style_item jQptrn" title="ptrn_b"></span>
					<span class="ssw_ptrn_c style_item jQptrn" title="ptrn_c"></span>
					<span class="ssw_ptrn_d style_item jQptrn" title="ptrn_d"></span>
					<span class="ssw_ptrn_e style_item jQptrn" title="ptrn_e"></span>
				</div>
			</div>
			<div class="sepH_c">
				<p>Layout:</p>
				<div class="clearfix">
					<label class="radio inline"><input type="radio" name="ssw_layout" id="ssw_layout_fluid" value="" checked /> Fluid</label>
					<label class="radio inline"><input type="radio" name="ssw_layout" id="ssw_layout_fixed" value="gebo-fixed" /> Fixed</label>
				</div>
			</div>
			<div class="sepH_c">
				<p>Sidebar position:</p>
				<div class="clearfix">
					<label class="radio inline"><input type="radio" name="ssw_sidebar" id="ssw_sidebar_left" value="" checked /> Left</label>
					<label class="radio inline"><input type="radio" name="ssw_sidebar" id="ssw_sidebar_right" value="sidebar_right" /> Right</label>
				</div>
			</div>
			<div class="sepH_c">
				<p>Show top menu on:</p>
				<div class="clearfix">
					<label class="radio inline"><input type="radio" name="ssw_menu" id="ssw_menu_click" value="" checked /> Click</label>
					<label class="radio inline"><input type="radio" name="ssw_menu" id="ssw_menu_hover" value="menu_hover" /> Hover</label>
				</div>
			</div>
			
			<div class="gh_button-group">
				<a href="#" id="showCss" class="btn btn-primary btn-mini">Show CSS</a>
				<a href="#" id="resetDefault" class="btn btn-mini">Reset</a>
			</div>
			<div class="hide">
				<ul id="ssw_styles">
					<li class="small ssw_mbColor sepH_a" style="display:none">body {<span class="ssw_mColor sepH_a" style="display:none"> color: #<span></span>;</span> <span class="ssw_bColor" style="display:none">background-color: #<span></span> </span>}</li>
					<li class="small ssw_lColor sepH_a" style="display:none">a { color: #<span></span> }</li>
				</ul>
			</div>
		</div>
		
		<div id="maincontainer" class="clearfix">
			<header>
				<div class="navbar navbar-fixed-top">
					<div class="navbar-inner">
						<div class="container-fluid">
							<a class="brand" href="dashboard.htm" ><i class="icon-home icon-white"></i> DefinedWeek <span class="sml_t">1.0 Beta</span></a>
							<ul class="nav user_menu pull-right">
								<li class="hidden-phone hidden-tablet">
									<div class="nb_boxes clearfix">
										<a data-toggle="modal" data-backdrop="static" href="#myMail" class="label ttip_b" title="New messages">25 <i class="splashy-mail_light"></i></a>
										<a data-toggle="modal" data-backdrop="static" href="#myTasks" class="label ttip_b" title="New tasks">10 <i class="splashy-calendar_week"></i></a>
									</div>
								</li>
								<li class="divider-vertical hidden-phone hidden-tablet"></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle nav_condensed" data-toggle="dropdown"><i class="flag-gb"></i> <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="javascript:void(0)"><i class="flag-de"></i> Deutsch</a></li>
										<li><a href="javascript:void(0)"><i class="flag-fr"></i> Français</a></li>
										<li><a href="javascript:void(0)"><i class="flag-es"></i> Español</a></li>
										<li><a href="javascript:void(0)"><i class="flag-ru"></i> Pусский</a></li>
									</ul>
								</li>
								<li class="divider-vertical hidden-phone hidden-tablet"></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/user_avatar.png"  alt="" class="user_avatar" />Johny Smith <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="user_profile.htm" >My Profile</a></li>
										<li><a href="javascrip:void(0)">Another action</a></li>
										<li class="divider"></li>
										<li><a href="index.htm" >Log Out</a></li>
									</ul>
								</li>
							</ul>
							<ul class="nav" id="mobile-nav">
								[#list ["admin:product", "admin:productCategory", "admin:parameterGroup", "admin:attribute", "admin:specification", "admin:brand", "admin:productNotify"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#product">${message("admin.main.productNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								[#list ["admin:order", "admin:payment", "admin:refunds", "admin:shipping", "admin:returns", "admin:deliveryCenter", "admin:deliveryTemplate"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#order">${message("admin.main.orderNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								[#list ["admin:member", "admin:memberRank", "admin:memberAttribute", "admin:review", "admin:consultation"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#member">${message("admin.main.memberNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								[#list ["admin:navigation", "admin:article", "admin:articleCategory", "admin:tag", "admin:friendLink", "admin:adPosition", "admin:ad", "admin:template", "admin:cache", "admin:static", "admin:index"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#content">${message("admin.main.contentNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								[#list ["admin:promotion", "admin:coupon", "admin:seo", "admin:sitemap"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#marketing">${message("admin.main.marketingNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								[#list ["admin:statistics", "admin:sales", "admin:salesRanking", "admin:purchaseRanking", "admin:deposit"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#statistics">${message("admin.main.statisticsNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								[#list ["admin:setting", "admin:area", "admin:paymentMethod", "admin:shippingMethod", "admin:deliveryCorp", "admin:paymentPlugin", "admin:storagePlugin", "admin:admin", "admin:role", "admin:message", "admin:log"] as permission]
									[@shiro.hasPermission name = permission]
										<li>
											<a href="#system">${message("admin.main.systemNav")}</a>
										</li>
										[#break /]
									[/@shiro.hasPermission]
								[/#list]
								<li>
									<a href="${base}/" target="_blank">${message("admin.main.home")}</a>
								</li>
								<li>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="modal hide fade" id="myMail">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">×</button>
						<h3>New messages</h3>
					</div>
					<div class="modal-body">
						<div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
						<table class="table table-condensed table-striped" data-rowlink="a">
							<thead>
								<tr>
									<th>Sender</th>
									<th>Subject</th>
									<th>Date</th>
									<th>Size</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Declan Pamphlett</td>
									<td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
									<td>23/05/2012</td>
									<td>25KB</td>
								</tr>
								<tr>
									<td>Erin Church</td>
									<td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
									<td>24/05/2012</td>
									<td>15KB</td>
								</tr>
								<tr>
									<td>Koby Auld</td>
									<td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
									<td>25/05/2012</td>
									<td>28KB</td>
								</tr>
								<tr>
									<td>Anthony Pound</td>
									<td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
									<td>25/05/2012</td>
									<td>33KB</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<a href="javascript:void(0)" class="btn">Go to mailbox</a>
					</div>
				</div>
				<div class="modal hide fade" id="myTasks">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">×</button>
						<h3>New Tasks</h3>
					</div>
					<div class="modal-body">
						<div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
						<table class="table table-condensed table-striped" data-rowlink="a">
							<thead>
								<tr>
									<th>id</th>
									<th>Summary</th>
									<th>Updated</th>
									<th>Priority</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>P-23</td>
									<td><a href="javascript:void(0)">Admin should not break if URL&hellip;</a></td>
									<td>23/05/2012</td>
									<td class="tac"><span class="label label-important">High</span></td>
									<td>Open</td>
								</tr>
								<tr>
									<td>P-18</td>
									<td><a href="javascript:void(0)">Displaying submenus in custom&hellip;</a></td>
									<td>22/05/2012</td>
									<td class="tac"><span class="label label-warning">Medium</span></td>
									<td>Reopen</td>
								</tr>
								<tr>
									<td>P-25</td>
									<td><a href="javascript:void(0)">Featured image on post types&hellip;</a></td>
									<td>22/05/2012</td>
									<td class="tac"><span class="label label-success">Low</span></td>
									<td>Updated</td>
								</tr>
								<tr>
									<td>P-10</td>
									<td><a href="javascript:void(0)">Multiple feed fixes and&hellip;</a></td>
									<td>17/05/2012</td>
									<td class="tac"><span class="label label-warning">Medium</span></td>
									<td>Open</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<a href="javascript:void(0)" class="btn">Go to task manager</a>
					</div>
				</div>
				
			</header>    

            <div id="contentwrapper">
                <div class="main_content">
                    <div class="row-fluid">
		<div class="span12 tac">
			<ul class="ov_boxes">
				<li>
					<div class="p_bar_up p_canvas">2,4,9,7,12,8,16,23,23,23,</div>
					<div class="ov_text">
						<strong>$3 458,00</strong>
						Weekly Sale
					</div>
				</li>
				<li>
					<div class="p_bar_down p_canvas">20,15,18,14,10,13,9,7</div>
					<div class="ov_text">
						<strong>$43 567,43</strong>
						Monthly Sale
					</div>
				</li>
				<li>
					<div class="p_line_up p_canvas">3,5,9,7,12,8,16</div>
					<div class="ov_text">
						<strong>2304</strong>
						Unique visitors (last 24h)
					</div>
				</li>
				<li>
					<div class="p_line_down p_canvas">20,16,14,18,15,14,14,13,12,10,10,8</div>
					<div class="ov_text">
						<strong>30240</strong>
						Unique visitors (last week)
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="row-fluid">
		<div class="span12">
			<ul class="dshb_icoNav clearfix">
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/multi-agents.png)"><span class="label label-info">+10</span> Users</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/world.png)">Map</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/configuration.png)">Settings</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/lab.png)">Lab</a>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/van.png)"><span class="label label-success">$2851</span> Delivery</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/pie-chart.png)">Charts</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/edit.png)">Add New Article</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/add-item.png)"> Add New Page</a></li>
				<li><a href="javascript:void(0)" style="background-image: url(img/gCons/chat-.png)"><span class="label label-important">26</span> Comments</a></li>
			</ul>
		</div>
	</div>
	
	<div class="row-fluid">
		<div class="span5 ">
				<h3 class="heading">Visitors by Country <small>last week</small></h3>
			<div id="fl_2" style="height:200px;width:80%;margin:50px auto 0"></div>
		</div>
		<div class="span7">
				<div class="heading clearfix">
					<h3 class="pull-left">Another Chart</h3>
					<span class="pull-right label label-info ttip_t" title="Here is a sample info tooltip">Info</span>
				</div>
			<div id="fl_1" style="height:270px;width:100%;margin:15px auto 0"></div>
		</div>
	</div>
    
    <div class="row-fluid">
        <div class="span6">
			<div class="heading clearfix">
				<h3 class="pull-left">Latest Orders</h3>
				<span class="pull-right label label-important">5 Orders</span>
			</div>
			<table class="table table-striped table-bordered mediaTable">
				<thead>
					<tr>
						<th class="optional">id</th>
						<th class="essential persist">Customer</th>
						<th class="optional">Status</th>
						<th class="optional">Date Added</th>
						<th class="essential">Total</th>
						<th class="essential">Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>134</td>
						<td>Summer Throssell</td>
						<td>Pending</td>
						<td>24/04/2012</td>
						<td>$120.23</td>
						<td>
							<a href="#" title="Edit"><i class="splashy-document_letter_edit"></i></a>
							<a href="#" title="Accept"><i class="splashy-document_letter_okay"></i></a>
							<a href="#" title="Remove"><i class="splashy-document_letter_remove"></i></a>
						</td>
					</tr>
					<tr>
						<td>133</td>
						<td>Declan Pamphlett</td>
						<td>Pending</td>
						<td>23/04/2012</td>
						<td>$320.00</td>
						<td>
							<a href="#" title="Edit"><i class="splashy-document_letter_edit"></i></a>
							<a href="#" title="Accept"><i class="splashy-document_letter_okay"></i></a>
							<a href="#" title="Remove"><i class="splashy-document_letter_remove"></i></a>
						</td>
					</tr>
					<tr>
						<td>132</td>
						<td>Erin Church</td>
						<td>Pending</td>
						<td>23/04/2012</td>
						<td>$44.00</td>
						<td>
							<a href="#" title="Edit"><i class="splashy-document_letter_edit"></i></a>
							<a href="#" title="Accept"><i class="splashy-document_letter_okay"></i></a>
							<a href="#" title="Remove"><i class="splashy-document_letter_remove"></i></a>
						</td>
					</tr>
					<tr>
						<td>131</td>
						<td>Koby Auld</td>
						<td>Pending</td>
						<td>22/04/2012</td>
						<td>$180.20</td>
						<td>
							<a href="#" title="Edit"><i class="splashy-document_letter_edit"></i></a>
							<a href="#" title="Accept"><i class="splashy-document_letter_okay"></i></a>
							<a href="#" title="Remove"><i class="splashy-document_letter_remove"></i></a>
						</td>
					</tr>
					<tr>
						<td>130</td>
						<td>Anthony Pound</td>
						<td>Pending</td>
						<td>20/04/2012</td>
						<td>$610.42</td>
						<td>
							<a href="#" title="Edit"><i class="splashy-document_letter_edit"></i></a>
							<a href="#" title="Accept"><i class="splashy-document_letter_okay"></i></a>
							<a href="#" title="Remove"><i class="splashy-document_letter_remove"></i></a>
						</td>
					</tr>
				</tbody>
			</table>
        </div>
        <div class="span6">
			<div class="heading clearfix">
				<h3 class="pull-left">Latest Images <small>(gallery grid)</small></h3>
				<span class="pull-right label label-success">10</span>
			</div>
			<div id="small_grid" class="wmk_grid">
				<ul>
										<li class="thumbnail">
						<a href="gallery/Image04.jpg"  title="Image_4 title long title long title long">
							<img src="gallery/Image04_tn.jpg"  alt="" />
						</a>
						<p>
							<span>375KB<br/>11/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image05.jpg"  title="Image_5 title long title long title long">
							<img src="gallery/Image05_tn.jpg"  alt="" />
						</a>
						<p>
							<span>336KB<br/>12/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image06.jpg"  title="Image_6 title long title long title long">
							<img src="gallery/Image06_tn.jpg"  alt="" />
						</a>
						<p>
							<span>169KB<br/>28/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image07.jpg"  title="Image_7 title long title long title long">
							<img src="gallery/Image07_tn.jpg"  alt="" />
						</a>
						<p>
							<span>381KB<br/>13/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image08.jpg"  title="Image_8 title long title long title long">
							<img src="gallery/Image08_tn.jpg"  alt="" />
						</a>
						<p>
							<span>268KB<br/>22/06/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image09.jpg"  title="Image_9 title long title long title long">
							<img src="gallery/Image09_tn.jpg"  alt="" />
						</a>
						<p>
							<span>173KB<br/>28/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="javascript:if(confirm('http://tzd-themes.com/gebo_admin/gallery/Image10.jpg  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������, �����������, ����Ŀ����ֹͣ��  \n\n�����ڷ������ϴ���?'))window.location='http://tzd-themes.com/gebo_admin/gallery/Image10.jpg'"  title="Image_10 title long title long title long">
							<img src="gallery/Image10_tn.jpg"  alt="" />
						</a>
						<p>
							<span>120KB<br/>15/06/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image11.jpg"  title="Image_11 title long title long title long">
							<img src="gallery/Image11_tn.jpg"  alt="" />
						</a>
						<p>
							<span>383KB<br/>10/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image12.jpg"  title="Image_12 title long title long title long">
							<img src="gallery/Image12_tn.jpg"  alt="" />
						</a>
						<p>
							<span>225KB<br/>22/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image13.jpg"  title="Image_13 title long title long title long">
							<img src="gallery/Image13_tn.jpg"  alt="" />
						</a>
						<p>
							<span>181KB<br/>23/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image14.jpg"  title="Image_14 title long title long title long">
							<img src="gallery/Image14_tn.jpg"  alt="" />
						</a>
						<p>
							<span>372KB<br/>22/05/2012</span>
						</p>
					</li>
										<li class="thumbnail">
						<a href="gallery/Image15.jpg"  title="Image_15 title long title long title long">
							<img src="gallery/Image15_tn.jpg"  alt="" />
						</a>
						<p>
							<span>169KB<br/>18/05/2012</span>
						</p>
					</li>
					 
				</ul>
			</div>
        </div>
    </div>
    
    <div class="row-fluid">
        <div class="span8">
			<h3 class="heading">Calendar</h3>
			<div id="calendar"></div>
        </div>
        <div class="span4" id="user-list">
			<h3 class="heading">Users <small>last 24 hours</small></h3>
			<div class="row-fluid">
				<div class="input-prepend">
					<span class="add-on ad-on-icon"><i class="icon-user"></i></span><input type="text" class="user-list-search search" placeholder="Search user" />
				</div>
				<ul class="nav nav-pills line_sep">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Sort by <b class="caret"></b></a>
						<ul class="dropdown-menu sort-by">
							<li><a href="javascript:void(0)" class="sort" data-sort="sl_name">by name</a></li>
							<li><a href="javascript:void(0)" class="sort" data-sort="sl_status">by status</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Show <b class="caret"></b></a>
						<ul class="dropdown-menu filter">
							<li class="active"><a href="javascript:void(0)" id="filter-none">All</a></li>
							<li><a href="javascript:void(0)" id="filter-online">Online</a></li>
							<li><a href="javascript:void(0)" id="filter-offline">Offline</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<ul class="list user_list">
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">John Doe</a><br />
					<small class="s_color sl_email">johnd@example1.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Kate Miller</a><br />
					<small class="s_color sl_email">kmiller@example1.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">James Vandenberg</a><br />
					<small class="s_color sl_email">jamesv@example2.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">Donna Doerr</a><br />
					<small class="s_color sl_email">donnad@example3.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">Perry Weitzel</a><br />
					<small class="s_color sl_email">perryw@example2.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Charles Bledsoe</a><br />
					<small class="s_color sl_email">charlesb@example3.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">Wendy Proto</a><br />
					<small class="s_color sl_email">wnedyp@example1.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Nancy Ibrahim</a><br />
					<small class="s_color sl_email">nancyi@example2.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">Eric Cantrell</a><br />
					<small class="s_color sl_email">ericc@example4.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Andre Hill</a><br />
					<small class="s_color sl_email">andreh@example2.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Laura Taggart</a><br />
					<small class="s_color sl_email">laurat@example3.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">Doug Singer</a><br />
					<small class="s_color sl_email">dougs@example2.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Douglas Arnott</a><br />
					<small class="s_color sl_email">douglasa@example1.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">Lauren Henley</a><br />
					<small class="s_color sl_email">laurenh@example3.com</small>
				</li>
				<li>
					<span class="label label-important pull-right sl_status">offline</span>
					<a href="#" class="sl_name">William Jardine</a><br />
					<small class="s_color sl_email">williamj@example4.com</small>
				</li>
				<li>
					<span class="label label-success pull-right sl_status">online</span>
					<a href="#" class="sl_name">Yves Ouellet</a><br />
					<small class="s_color sl_email">yveso@example2.com</small>
				</li>
			</ul>
			<div class="pagination"><ul class="paging bottomPaging"></ul></div>
        </div>
    </div>
                </div>
            </div>
            <a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="Hide Sidebar">Sidebar switch</a>
<div class="sidebar">
	
	<div class="antiScroll">
		<div class="antiscroll-inner">
			<div class="antiscroll-content">
		
				<div class="sidebar_inner">
					<form action="http://tzd-themes.com/gebo_admin/index.php?uid=1&page=search_page" class="input-append" method="post" >
						<input autocomplete="off" name="query" class="search_query input-medium" size="16" type="text" placeholder="Search..." /><button type="submit" class="btn"><i class="icon-search"></i></button>
					</form>
					<div id="side_accordion" class="accordion">
						
						<div class="accordion-group default" id="product">
							<div class="accordion-heading">
								<a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i> ${message("admin.main.productGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseOne">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:product"]
											<li>
												<a href="../product/list.jhtml" target="iframe">${message("admin.main.product")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:productCategory"]
											<li>
												<a href="../product_category/list.jhtml" target="iframe">${message("admin.main.productCategory")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:parameterGroup"]
											<li>
												<a href="../parameter_group/list.jhtml" target="iframe">${message("admin.main.parameterGroup")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:attribute"]
											<li>
												<a href="../attribute/list.jhtml" target="iframe">${message("admin.main.attribute")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:specification"]
											<li>
												<a href="../specification/list.jhtml" target="iframe">${message("admin.main.specification")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:brand"]
											<li>
												<a href="../brand/list.jhtml" target="iframe">${message("admin.main.brand")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:productNotify"]
											<li>
												<a href="../product_notify/list.jhtml" target="iframe">${message("admin.main.productNotify")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
						<div class="accordion-group" id="order">
							<div class="accordion-heading">
								<a href="#collapseTwo" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i> ${message("admin.main.orderGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseTwo">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:order"]
											<li>
												<a href="../order/list.jhtml" target="iframe">${message("admin.main.order")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:payment"]
											<li>
												<a href="../payment/list.jhtml" target="iframe">${message("admin.main.payment")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:refunds"]
											<li>
												<a href="../refunds/list.jhtml" target="iframe">${message("admin.main.refunds")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:shipping"]
											<li>
												<a href="../shipping/list.jhtml" target="iframe">${message("admin.main.shipping")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:returns"]
											<li>
												<a href="../returns/list.jhtml" target="iframe">${message("admin.main.returns")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:deliveryCenter"]
											<li>
												<a href="../delivery_center/list.jhtml" target="iframe">${message("admin.main.deliveryCenter")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:deliveryTemplate"]
											<li>
												<a href="../delivery_template/list.jhtml" target="iframe">${message("admin.main.deliveryTemplate")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
						<div class="accordion-group" id="member">
							<div class="accordion-heading">
								<a href="#collapseThree" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i> ${message("admin.main.memberGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseThree">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:member"]
											<li>
												<a href="../member/list.jhtml" target="iframe">${message("admin.main.member")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:memberRank"]
											<li>
												<a href="../member_rank/list.jhtml" target="iframe">${message("admin.main.memberRank")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:memberAttribute"]
											<li>
												<a href="../member_attribute/list.jhtml" target="iframe">${message("admin.main.memberAttribute")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:review"]
											<li>
												<a href="../review/list.jhtml" target="iframe">${message("admin.main.review")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:consultation"]
											<li>
												<a href="../consultation/list.jhtml" target="iframe">${message("admin.main.consultation")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
						<div class="accordion-group" id="content">
							<div class="accordion-heading">
								<a href="#collapseFour" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i>${message("admin.main.contentGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseFour">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:navigation"]
											<li>
												<a href="../navigation/list.jhtml" target="iframe">${message("admin.main.navigation")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:article"]
											<li>
												<a href="../article/list.jhtml" target="iframe">${message("admin.main.article")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:articleCategory"]
											<li>
												<a href="../article_category/list.jhtml" target="iframe">${message("admin.main.articleCategory")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:tag"]
											<li>
												<a href="../tag/list.jhtml" target="iframe">${message("admin.main.tag")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:friendLink"]
											<li>
												<a href="../friend_link/list.jhtml" target="iframe">${message("admin.main.friendLink")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:adPosition"]
											<li>
												<a href="../ad_position/list.jhtml" target="iframe">${message("admin.main.adPosition")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:ad"]
											<li>
												<a href="../ad/list.jhtml" target="iframe">${message("admin.main.ad")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:template"]
											<li>
												<a href="../template/list.jhtml" target="iframe">${message("admin.main.template")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:cache"]
											<li>
												<a href="../cache/clear.jhtml" target="iframe">${message("admin.main.cache")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:static"]
											<li>
												<a href="../static/build.jhtml" target="iframe">${message("admin.main.static")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:index"]
											<li>
												<a href="../index/build.jhtml" target="iframe">${message("admin.main.index")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
						<div class="accordion-group" id="marketing">
							<div class="accordion-heading">
								<a href="#collapseFive" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i> ${message("admin.main.marketingGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseFive">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:promotion"]
											<li>
												<a href="../promotion/list.jhtml" target="iframe">${message("admin.main.promotion")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:coupon"]
											<li>
												<a href="../coupon/list.jhtml" target="iframe">${message("admin.main.coupon")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:seo"]
											<li>
												<a href="../seo/list.jhtml" target="iframe">${message("admin.main.seo")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:sitemap"]
											<li>
												<a href="../sitemap/build.jhtml" target="iframe">${message("admin.main.sitemap")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
						<div class="accordion-group" id="statistics">
							<div class="accordion-heading">
								<a href="#collapseSix" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i> ${message("admin.main.statisticsGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseSix">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:statistics"]
											<li>
												<a href="../statistics/view.jhtml" target="iframe">${message("admin.main.statistics")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:statistics"]
											<li>
												<a href="../statistics/setting.jhtml" target="iframe">${message("admin.main.statisticsSetting")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:sales"]
											<li>
												<a href="../sales/view.jhtml" target="iframe">${message("admin.main.sales")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:salesRanking"]
											<li>
												<a href="../sales_ranking/list.jhtml" target="iframe">${message("admin.main.salesRanking")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:purchaseRanking"]
											<li>
												<a href="../purchase_ranking/list.jhtml" target="iframe">${message("admin.main.purchaseRanking")}</a>
											</li>
										[/@shiro.hasPermission]
											[@shiro.hasPermission name="admin:deposit"]
											<li>
												<a href="../deposit/list.jhtml" target="iframe">${message("admin.main.deposit")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
						<div class="accordion-group" id="system">
							<div class="accordion-heading">
								<a href="#collapseSeven" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
									<i class="icon-th"></i> ${message("admin.main.systemGroup")}
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseSeven">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										[@shiro.hasPermission name="admin:setting"]
											<li>
												<a href="../setting/edit.jhtml" target="iframe">${message("admin.main.setting")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:area"]
											<li>
												<a href="../area/list.jhtml" target="iframe">${message("admin.main.area")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:paymentMethod"]
											<li>
												<a href="../payment_method/list.jhtml" target="iframe">${message("admin.main.paymentMethod")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:shippingMethod"]
											<li>
												<a href="../shipping_method/list.jhtml" target="iframe">${message("admin.main.shippingMethod")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:deliveryCorp"]
											<li>
												<a href="../delivery_corp/list.jhtml" target="iframe">${message("admin.main.deliveryCorp")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:paymentPlugin"]
											<li>
												<a href="../payment_plugin/list.jhtml" target="iframe">${message("admin.main.paymentPlugin")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:storagePlugin"]
											<li>
												<a href="../storage_plugin/list.jhtml" target="iframe">${message("admin.main.storagePlugin")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:admin"]
											<li>
												<a href="../admin/list.jhtml" target="iframe">${message("admin.main.admin")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:role"]
											<li>
												<a href="../role/list.jhtml" target="iframe">${message("admin.main.role")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:message"]
											<li>
												<a href="../message/send.jhtml" target="iframe">${message("admin.main.send")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:message"]
											<li>
												<a href="../message/list.jhtml" target="iframe">${message("admin.main.message")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:message"]
											<li>
												<a href="../message/draft.jhtml" target="iframe">${message("admin.main.draft")}</a>
											</li>
										[/@shiro.hasPermission]
										[@shiro.hasPermission name="admin:log"]
											<li>
												<a href="../log/list.jhtml" target="iframe">${message("admin.main.log")}</a>
											</li>
										[/@shiro.hasPermission]
									</ul>
								</div>
							</div>
						</div>
			</div>
		</div>
	</div>

</div>

    <script src="${base}/resources/admin/js/jquery.min.js" ></script>
    <script src="l${base}/resources/admin/ib/jquery-ui/jquery-ui-1.8.23.custom.min.js" ></script>
    <!-- touch events for jquery ui-->
	<script src="${base}/resources/admin/js/forms/jquery.ui.touch-punch.min.js" ></script>
    <!-- easing plugin -->
	<script src="${base}/resources/admin/js/jquery.easing.1.3.min.js" ></script>
    <!-- smart resize event -->
	<script src="${base}/resources/admin/js/jquery.debouncedresize.min.js" ></script>
    <!-- js cookie plugin -->
	<script src="${base}/resources/admin/js/jquery.cookie.min.js" ></script>
    <!-- main bootstrap js -->
	<script src="${base}/resources/admin/bootstrap/js/bootstrap.min.js" ></script>
    <!-- bootstrap plugins -->
	<script src="${base}/resources/admin/js/bootstrap.plugins.min.js" ></script>
    <!-- code prettifier -->
	<script src="${base}/resources/admin/lib/google-code-prettify/prettify.min.js" ></script>
    <!-- sticky messages -->
	<script src="${base}/resources/admin/lib/sticky/sticky.min.js" ></script>
    <!-- tooltips -->
	<script src="${base}/resources/admin/lib/qtip2/jquery.qtip.min.js" ></script>
    <!-- lightbox -->
	<script src="${base}/resources/admin/lib/colorbox/jquery.colorbox.min.js" ></script>
    <!-- jBreadcrumbs -->
	<script src="${base}/resources/admin/lib/jBreadcrumbs/js/jquery.jBreadCrumb.1.1.min.js" ></script>
	<!-- hidden elements width/height -->
	<script src="${base}/resources/admin/js/jquery.actual.min.js" ></script>
	<!-- scroll -->
	<script src="${base}/resources/admin/lib/antiscroll/antiscroll.js" ></script>
	<script src="${base}/resources/admin/lib/antiscroll/jquery-mousewheel.js" ></script>
	<!-- fix for ios orientation change -->
	<script src="${base}/resources/admin/js/ios-orientationchange-fix.js" ></script>
	<!-- to top -->
	<script src="${base}/resources/admin/lib/UItoTop/jquery.ui.totop.min.js" ></script>
	<!-- mobile nav -->
	<script src="${base}/resources/admin/js/selectNav.js" ></script>

	<!-- common functions -->
	<script src="${base}/resources/admin/js/gebo_common.js" ></script>

	<script type="text/javascript">
		<!-- $.colorbox({
			html:'<div style="background:#fff;padding:20px">This is colorbox opened on page load.</div>',
			opacity: '0.2',
			fixed: true
		}); -->
	</script>
    <!-- multi-column layout -->
    <script src="${base}/resources/admin/js/jquery.imagesloaded.min.js" ></script>
    <script src="${base}/resources/admin/js/jquery.wookmark.js" ></script>
    <!-- responsive table -->
	<script src="${base}/resources/admin/js/jquery.mediaTable.min.js" ></script>
	<!-- small charts -->
	<script src="${base}/resources/admin/js/jquery.peity.min.js" ></script>
	<!-- charts -->
	<script src="${base}/resources/admin/lib/flot/jquery.flot.min.js" ></script>
    <script src="${base}/resources/admin/lib/flot/jquery.flot.resize.min.js" ></script>
    <script src="${base}/resources/admin/lib/flot/jquery.flot.pie.min.js" ></script>
    <!-- calendar -->
	<script src="${base}/resources/admin/lib/fullcalendar/fullcalendar.min.js" ></script>
    <!-- sortable/filterable list -->
	<script src="${base}/resources/admin/lib/list_js/list.min.js" ></script>
    <script src="${base}/resources/admin/lib/list_js/plugins/paging/list.paging.min.js" ></script>
	<!-- dashboard functions -->
	<script src="${base}/resources/admin/js/gebo_dashboard.js" ></script>

	
	
    <script>
        $(document).ready(function() {
			//* jQuery.browser.mobile (http://detectmobilebrowser.com/)
			//* jQuery.browser.mobile will be true if the browser is a mobile device
			(function(a){jQuery.browser.mobile=/android.+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i.test(a.substr(0,4))})(navigator.userAgent||navigator.vendor||window.opera);
			//replace themeforest iframe
			if(jQuery.browser.mobile) {
				if (top !== self) top.location.href = self.location.href;
			}
			//* show all elements & remove preloader
            setTimeout('$("html").removeClass("js")',1000);
			
        });
    </script>
	
	<script type="text/javascript">

		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-32339645-1']);
		_gaq.push(['_trackPageview']);
	  
		(function() {
		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	  
	  </script>
	  	<style type="text/css">
			*{
				font: 12px tahoma, Arial, Verdana, sans-serif;
			}
			html, body {
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
		</style>
		<script type="text/javascript">
		$().ready(function() {
		
			var $nav = $("#mobile-nav a:not(:last)");
			var $menu = $(".accordion-group");
			var $menuItem = $(".accordion-inner a");
			
			$nav.click(function() {
				var $this = $(this);
				//$nav.removeClass("current");
				//$this.addClass("current");
				var $currentMenu = $($this.attr("href"));
				$menu.hide();
				$currentMenu.show();
				return false;
			});
			
			$menuItem.click(function() {
				var $this = $(this);
				$menuItem.removeClass("current");
				$this.addClass("current");
			});
		});
		</script>
	</div>					
	</body>
</html>
				