<%-- 
    Document   : Inicio
    Created on : 25-jul-2017, 1:09:12
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ut2.png" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stylesheet.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css" >
        <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>


        <style>
            .dropbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropbtn:hover, .dropbtn:focus {
                background-color: #3e8e41;
            }

            .dropdown {
                float: right;
                position: relative;
                display: inline-block;

            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                right: 0;
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown a:hover {background-color: #f1f1f1}

            .show {display:block;}
        </style>

        <script>
            /* When the user clicks on the button, 
             toggle between hiding and showing the dropdown content */
            function myFunction() {
                document.getElementById("myDropdown").classList.toggle("show");
            }

            // Close the dropdown if the user clicks outside of it
            window.onclick = function (event) {
                if (!event.target.matches('.dropbtn')) {

                    var dropdowns = document.getElementsByClassName("dropdown-content");
                    var i;
                    for (i = 0; i < dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if (openDropdown.classList.contains('show')) {
                            openDropdown.classList.remove('show');
                        }
                    }
                }
            }
        </script>


    </head>
    <body class="common-home">
        <!-- swipe menu -->

        <div id="page">
            <div class="shadow"></div>
            <div class="toprow-1">
                <a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>
            </div>

            <header class="header">
                <div class="container">
                    <div class="box-right">
                        <ul class="social-list">
                            <li>
                                <a href="//www.facebook.com/"><span class="fa fa-facebook"></span></a>
                            </li>
                            <li>
                                <a href="//www.twitter.com/"><span class="fa fa-twitter"></span></a>
                            </li>
                            <li>
                                <a href="//plus.google.com/+"><span class="fa fa-google-plus"></span></a>
                            </li>
                            <li>
                                <a href="//www.youtube.com/"><span class="fa fa-youtube"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-xs-6">
                            <div id="logo" class="logo">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/utez.png" title="Electronics online store" alt="Electronics online store" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-sm-5 col-xs-6">
                            <div id="search" class="search">
                                <input type="text" name="search" value="" placeholder="Buscar">
                                <button type="button" class="button-search">Buscar</button>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <!--    <div class="col-sm-3" style="font-size: 19px;line-height: 24px; margin-top:12px">
                        <a href="Login.html"><i class="fa fa-user"></i>
                        <span >Iniciar Sesión</span>
                      </a>
                    </div> POSIBLE LOGIN-->
                    </div>
                </div>


                <div class="container">
                    <div class="row">
                        <div class="col-sm-3"></div>


                        <div class="col-sm-9">
                            <nav id="top" class="top_panel">
                                <div id="top-links" class="nav">
                                    <ul class="list-inline">
                                        <li class="first">
                                            <a href="Index.html"><i class="fa fa-home"></i><span class="hidden-sm">Inicio</span></a>
                                        </li>
                                        <li>
                                            <a href="#" id="wishlist-total" title="Wish List (0)"><i class="fa fa-calendar"></i> <span class="hidden-sm">28/06/2017</span></a>
                                        </li>
                                    </ul>
                                    <div class="box-cart">
                                        <div id="cart" class="cart">
                                            <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="dropdown-toggle">
                                            <span class="fa fa-user"  href="Login.html"></span>
                                            <a class="cart-total3 hidden-xs"  href="<s:url value='/login.action'/>">${sessionScope.userName}</a>
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                                            
                    </div>
                    </nav>
                </div>

        </div>
    </div>


</header>

<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div id="menu-gadget" class="menu-gadget">
                <div id="menu-icon">Menu</div>
                <ul class="menu">



                    <li>
                        <a href="#">Horarios Alumnos </a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">Horarios Profesores </a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">Horas Libres </a>
                    </li>
                    <li>
                        <a href="#">Horarios General </a>
                    </li>
                    <li>
                        <a href="Formulario.html">Formularios </a>
                        <i class="fa fa-list"></i>
                    </li>
                    <li>
                        <a href="Tablas.html">Tablas </a>
                        <i class="fa fa-table"></i>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>

<div class="header_modules"></div>

<div id="container">
    <div class="container">
        <div class="row">
            <div id="column-left" class="col-sm-3 ">
                <div class="box category">
                    <div class="box-heading"><h3><i class="fa fa-home"></i>Menu</h3></div>
                    <div class="box-content">
                        <div class="box-category">
                            <ul class="menu">

                                <li>
                                    <a href="#">Horarios Alumnos </a>
                                    <i class="fa fa-angle-right"></i>
                                </li>
                                <li>
                                    <a href="#">Horarios Profesores </a>
                                    <i class="fa fa-angle-right"></i>
                                </li>
                                <li>
                                    <a href="#">Horas Libres </a>
                                </li>
                                <li>
                                    <a href="#">Horarios General </a>
                                </li>
                                <li>
                                    <a href="Formulario.html">Formularios </a>
                                    <i class="fa fa-list"></i>
                                </li>
                                <li>
                                    <a href="Tablas.html">Tablas </a>
                                    <i class="fa fa-table"></i>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>







            <div id="content" class="col-sm-9">
                <div class="fluid_container">
                    <div class="camera_container">
                        <div id="camera_wrap_0" class="camera_wrap" style="display: block; height: 345px;">
                            <div class="camera_fakehover">
                                <div class="camera_target">
                                    <div class="cameraCont">
                                        <div class="cameraSlide cameraSlide_0 cameracurrent" style="visibility: visible; display: block; z-index: 999;">
                                            <img src="images/utezU.jpg" class="imgLoaded" data-alignment="" data-portrait="" width="870" height="345" style="visibility: visible; height: 345px; margin-left: 0px; margin-top: 0px; position: absolute; width: 870px;">
                                            <div class="camerarelative" style="width: 870px; height: 345px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="column-left" class="col-sm-3 "></diV>


            <div id="content" class="col-sm-9">
                <ul class="breadcrumb">
                    <li><a href="https://livedemo00.template-help.com/opencart_52995/index.php?route=common/home"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Registrar</a></li>
                    <li><a href="#">Guardar</a></li>
                </ul>
                <h1>Profesor</h1>
                <p>Si tienes un login existente , inicia sesión con el<a href="Login.html"> LOGIN</a>.</p>
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset id="account">
                        <legend>Tus Datos Personales</legend>
                        <div class="form-group required" style="display: none;">
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="1" checked="checked">
                                        Default</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-firstname">Nombre/s</label>
                            <div class="col-sm-10">
                                <input type="text" name="Nombre/s...." value="" placeholder="Nombre/s ..." id="input-firstname" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-lastname">Apellido/s</label>
                            <div class="col-sm-10">
                                <input type="text" name="Apellido/s...." value="" placeholder="Apellido/s ...." id="input-lastname" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">Correo</label>
                            <div class="col-sm-10">
                                <input type="email" name="Correo..." value="" placeholder="Correo ..." id="input-email" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-telephone">Teléfono</label>
                            <div class="col-sm-10">
                                <input type="tel" name="Teléfone..." value="" placeholder="Teléfono ..." id="input-telephone" class="form-control">
                            </div>
                        </div>

                    </fieldset>
                    <fieldset id="address">
                        <legend>Tu dirreción</legend>

                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-address-1">Dirección </label>
                            <div class="col-sm-10">
                                <input type="text" name="Dirección" value="" placeholder="Dirección ..." id="input-address-1" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-address-2">Colonia</label>
                            <div class="col-sm-10">
                                <input type="text" name="Colonia..." value="" placeholder="Colonia ..." id="input-address-2" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-city">Ciudad</label>
                            <div class="col-sm-10">
                                <input type="text" name="city" value="" placeholder="Ciudad ..." id="input-city" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-postcode">Código Postal</label>
                            <div class="col-sm-10">
                                <input type="text" name="postcode" value="" placeholder="Código Postal ..." id="input-postcode" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-country">País de Origen</label>
                            <div class="col-sm-10">
                                <select name="country_id" id="input-country" class="form-control">
                                    <option value=""> --- Porfavor Selecciona una opción --- </option>
                                    <option value="244">Aaland Islands</option>
                                    <option value="1">Afghanistan</option>
                                    <option value="2">Albania</option>
                                    <option value="3">Algeria</option>
                                    <option value="4">American Samoa</option>
                                    <option value="5">Andorra</option>
                                    <option value="6">Angola</option>
                                    <option value="7">Anguilla</option>
                                    <option value="8">Antarctica</option>
                                    <option value="9">Antigua and Barbuda</option>
                                    <option value="10">Argentina</option>
                                    <option value="11">Armenia</option>
                                    <option value="12">Aruba</option>
                                    <option value="252">Ascension Island (British)</option>
                                    <option value="13">Australia</option>
                                    <option value="14">Austria</option>
                                    <option value="15">Azerbaijan</option>
                                    <option value="16">Bahamas</option>
                                    <option value="17">Bahrain</option>
                                    <option value="18">Bangladesh</option>
                                    <option value="19">Barbados</option>
                                    <option value="20">Belarus</option>
                                    <option value="21">Belgium</option>
                                    <option value="22">Belize</option>
                                    <option value="23">Benin</option>
                                    <option value="24">Bermuda</option>
                                    <option value="25">Bhutan</option>
                                    <option value="26">Bolivia</option>
                                    <option value="245">Bonaire, Sint Eustatius and Saba</option>
                                    <option value="27">Bosnia and Herzegovina</option>
                                    <option value="28">Botswana</option>
                                    <option value="29">Bouvet Island</option>
                                    <option value="30">Brazil</option>
                                    <option value="31">British Indian Ocean Territory</option>
                                    <option value="32">Brunei Darussalam</option>
                                    <option value="33">Bulgaria</option>
                                    <option value="34">Burkina Faso</option>
                                    <option value="35">Burundi</option>
                                    <option value="36">Cambodia</option>
                                    <option value="37">Cameroon</option>
                                    <option value="38">Canada</option>
                                    <option value="251">Canary Islands</option>
                                    <option value="39">Cape Verde</option>
                                    <option value="40">Cayman Islands</option>
                                    <option value="41">Central African Republic</option>
                                    <option value="42">Chad</option>
                                    <option value="43">Chile</option>
                                    <option value="44">China</option>
                                    <option value="45">Christmas Island</option>
                                    <option value="46">Cocos (Keeling) Islands</option>
                                    <option value="47">Colombia</option>
                                    <option value="48">Comoros</option>
                                    <option value="49">Congo</option>
                                    <option value="50">Cook Islands</option>
                                    <option value="51">Costa Rica</option>
                                    <option value="52">Cote D'Ivoire</option>
                                    <option value="53">Croatia</option>
                                    <option value="54">Cuba</option>
                                    <option value="246">Curacao</option>
                                    <option value="55">Cyprus</option>
                                    <option value="56">Czech Republic</option>
                                    <option value="237">Democratic Republic of Congo</option>
                                    <option value="57">Denmark</option>
                                    <option value="58">Djibouti</option>
                                    <option value="59">Dominica</option>
                                    <option value="60">Dominican Republic</option>
                                    <option value="61">East Timor</option>
                                    <option value="62">Ecuador</option>
                                    <option value="63">Egypt</option>
                                    <option value="64">El Salvador</option>
                                    <option value="65">Equatorial Guinea</option>
                                    <option value="66">Eritrea</option>
                                    <option value="67">Estonia</option>
                                    <option value="68">Ethiopia</option>
                                    <option value="69">Falkland Islands (Malvinas)</option>
                                    <option value="70">Faroe Islands</option>
                                    <option value="71">Fiji</option>
                                    <option value="72">Finland</option>
                                    <option value="74">France, Metropolitan</option>
                                    <option value="75">French Guiana</option>
                                    <option value="76">French Polynesia</option>
                                    <option value="77">French Southern Territories</option>
                                    <option value="126">FYROM</option>
                                    <option value="78">Gabon</option>
                                    <option value="79">Gambia</option>
                                    <option value="80">Georgia</option>
                                    <option value="81">Germany</option>
                                    <option value="82">Ghana</option>
                                    <option value="83">Gibraltar</option>
                                    <option value="84">Greece</option>
                                    <option value="85">Greenland</option>
                                    <option value="86">Grenada</option>
                                    <option value="87">Guadeloupe</option>
                                    <option value="88">Guam</option>
                                    <option value="89">Guatemala</option>
                                    <option value="256">Guernsey</option>
                                    <option value="90">Guinea</option>
                                    <option value="91">Guinea-Bissau</option>
                                    <option value="92">Guyana</option>
                                    <option value="93">Haiti</option>
                                    <option value="94">Heard and Mc Donald Islands</option>
                                    <option value="95">Honduras</option>
                                    <option value="96">Hong Kong</option>
                                    <option value="97">Hungary</option>
                                    <option value="98">Iceland</option>
                                    <option value="99">India</option>
                                    <option value="100">Indonesia</option>
                                    <option value="101">Iran (Islamic Republic of)</option>
                                    <option value="102">Iraq</option>
                                    <option value="103">Ireland</option>
                                    <option value="254">Isle of Man</option>
                                    <option value="104">Israel</option>
                                    <option value="105">Italy</option>
                                    <option value="106">Jamaica</option>
                                    <option value="107">Japan</option>
                                    <option value="257">Jersey</option>
                                    <option value="108">Jordan</option>
                                    <option value="109">Kazakhstan</option>
                                    <option value="110">Kenya</option>
                                    <option value="111">Kiribati</option>
                                    <option value="253">Kosovo, Republic of</option>
                                    <option value="114">Kuwait</option>
                                    <option value="115">Kyrgyzstan</option>
                                    <option value="116">Lao People's Democratic Republic</option>
                                    <option value="117">Latvia</option>
                                    <option value="118">Lebanon</option>
                                    <option value="119">Lesotho</option>
                                    <option value="120">Liberia</option>
                                    <option value="121">Libyan Arab Jamahiriya</option>
                                    <option value="122">Liechtenstein</option>
                                    <option value="123">Lithuania</option>
                                    <option value="124">Luxembourg</option>
                                    <option value="125">Macau</option>
                                    <option value="127">Madagascar</option>
                                    <option value="128">Malawi</option>
                                    <option value="129">Malaysia</option>
                                    <option value="130">Maldives</option>
                                    <option value="131">Mali</option>
                                    <option value="132">Malta</option>
                                    <option value="133">Marshall Islands</option>
                                    <option value="134">Martinique</option>
                                    <option value="135">Mauritania</option>
                                    <option value="136">Mauritius</option>
                                    <option value="137">Mayotte</option>
                                    <option value="138">Mexico</option>
                                    <option value="139">Micronesia, Federated States of</option>
                                    <option value="140">Moldova, Republic of</option>
                                    <option value="141">Monaco</option>
                                    <option value="142">Mongolia</option>
                                    <option value="242">Montenegro</option>
                                    <option value="143">Montserrat</option>
                                    <option value="144">Morocco</option>
                                    <option value="145">Mozambique</option>
                                    <option value="146">Myanmar</option>
                                    <option value="147">Namibia</option>
                                    <option value="148">Nauru</option>
                                    <option value="149">Nepal</option>
                                    <option value="150">Netherlands</option>
                                    <option value="151">Netherlands Antilles</option>
                                    <option value="152">New Caledonia</option>
                                    <option value="153">New Zealand</option>
                                    <option value="154">Nicaragua</option>
                                    <option value="155">Niger</option>
                                    <option value="156">Nigeria</option>
                                    <option value="157">Niue</option>
                                    <option value="158">Norfolk Island</option>
                                    <option value="112">North Korea</option>
                                    <option value="159">Northern Mariana Islands</option>
                                    <option value="160">Norway</option>
                                    <option value="161">Oman</option>
                                    <option value="162">Pakistan</option>
                                    <option value="163">Palau</option>
                                    <option value="247">Palestinian Territory, Occupied</option>
                                    <option value="164">Panama</option>
                                    <option value="165">Papua New Guinea</option>
                                    <option value="166">Paraguay</option>
                                    <option value="167">Peru</option>
                                    <option value="168">Philippines</option>
                                    <option value="169">Pitcairn</option>
                                    <option value="170">Poland</option>
                                    <option value="171">Portugal</option>
                                    <option value="172">Puerto Rico</option>
                                    <option value="173">Qatar</option>
                                    <option value="174">Reunion</option>
                                    <option value="175">Romania</option>
                                    <option value="176">Russian Federation</option>
                                    <option value="177">Rwanda</option>
                                    <option value="178">Saint Kitts and Nevis</option>
                                    <option value="179">Saint Lucia</option>
                                    <option value="180">Saint Vincent and the Grenadines</option>
                                    <option value="181">Samoa</option>
                                    <option value="182">San Marino</option>
                                    <option value="183">Sao Tome and Principe</option>
                                    <option value="184">Saudi Arabia</option>
                                    <option value="185">Senegal</option>
                                    <option value="243">Serbia</option>
                                    <option value="186">Seychelles</option>
                                    <option value="187">Sierra Leone</option>
                                    <option value="188">Singapore</option>
                                    <option value="189">Slovak Republic</option>
                                    <option value="190">Slovenia</option>
                                    <option value="191">Solomon Islands</option>
                                    <option value="192">Somalia</option>
                                    <option value="193">South Africa</option>
                                    <option value="194">South Georgia &amp; South Sandwich Islands</option>
                                    <option value="113">South Korea</option>
                                    <option value="248">South Sudan</option>
                                    <option value="195">Spain</option>
                                    <option value="196">Sri Lanka</option>
                                    <option value="249">St. Barthelemy</option>
                                    <option value="197">St. Helena</option>
                                    <option value="250">St. Martin (French part)</option>
                                    <option value="198">St. Pierre and Miquelon</option>
                                    <option value="199">Sudan</option>
                                    <option value="200">Suriname</option>
                                    <option value="201">Svalbard and Jan Mayen Islands</option>
                                    <option value="202">Swaziland</option>
                                    <option value="203">Sweden</option>
                                    <option value="204">Switzerland</option>
                                    <option value="205">Syrian Arab Republic</option>
                                    <option value="206">Taiwan</option>
                                    <option value="207">Tajikistan</option>
                                    <option value="208">Tanzania, United Republic of</option>
                                    <option value="209">Thailand</option>
                                    <option value="210">Togo</option>
                                    <option value="211">Tokelau</option>
                                    <option value="212">Tonga</option>
                                    <option value="213">Trinidad and Tobago</option>
                                    <option value="255">Tristan da Cunha</option>
                                    <option value="214">Tunisia</option>
                                    <option value="215">Turkey</option>
                                    <option value="216">Turkmenistan</option>
                                    <option value="217">Turks and Caicos Islands</option>
                                    <option value="218">Tuvalu</option>
                                    <option value="219">Uganda</option>
                                    <option value="220">Ukraine</option>
                                    <option value="221">United Arab Emirates</option>
                                    <option value="222" selected="selected">United Kingdom</option>
                                    <option value="223">United States</option>
                                    <option value="224">United States Minor Outlying Islands</option>
                                    <option value="225">Uruguay</option>
                                    <option value="226">Uzbekistan</option>
                                    <option value="227">Vanuatu</option>
                                    <option value="228">Vatican City State (Holy See)</option>
                                    <option value="229">Venezuela</option>
                                    <option value="230">Viet Nam</option>
                                    <option value="231">Virgin Islands (British)</option>
                                    <option value="232">Virgin Islands (U.S.)</option>
                                    <option value="233">Wallis and Futuna Islands</option>
                                    <option value="234">Western Sahara</option>
                                    <option value="235">Yemen</option>
                                    <option value="238">Zambia</option>
                                    <option value="239">Zimbabwe</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-zone">Region / Estado</label>
                            <div class="col-sm-10">
                                <select name="zone_id" id="input-zone" class="form-control"><option value=""> --- Porfavor Selecciona una opción --- </option><option value="3513">Aberdeen</option><option value="3514">Aberdeenshire</option><option value="3515">Anglesey</option><option value="3516">Angus</option><option value="3517">Argyll and Bute</option><option value="3518">Bedfordshire</option><option value="3519">Berkshire</option><option value="3520">Blaenau Gwent</option><option value="3521">Bridgend</option><option value="3522">Bristol</option><option value="3523">Buckinghamshire</option><option value="3524">Caerphilly</option><option value="3525">Cambridgeshire</option><option value="3526">Cardiff</option><option value="3527">Carmarthenshire</option><option value="3528">Ceredigion</option><option value="3529">Cheshire</option><option value="3530">Clackmannanshire</option><option value="3531">Conwy</option><option value="3532">Cornwall</option><option value="3949">County Antrim</option><option value="3950">County Armagh</option><option value="3951">County Down</option><option value="3952">County Fermanagh</option><option value="3953">County Londonderry</option><option value="3954">County Tyrone</option><option value="3955">Cumbria</option><option value="3533">Denbighshire</option><option value="3534">Derbyshire</option><option value="3535">Devon</option><option value="3536">Dorset</option><option value="3537">Dumfries and Galloway</option><option value="3538">Dundee</option><option value="3539">Durham</option><option value="3540">East Ayrshire</option><option value="3541">East Dunbartonshire</option><option value="3542">East Lothian</option><option value="3543">East Renfrewshire</option><option value="3544">East Riding of Yorkshire</option><option value="3545">East Sussex</option><option value="3546">Edinburgh</option><option value="3547">Essex</option><option value="3548">Falkirk</option><option value="3549">Fife</option><option value="3550">Flintshire</option><option value="3551">Glasgow</option><option value="3552">Gloucestershire</option><option value="3553">Greater London</option><option value="3554">Greater Manchester</option><option value="3555">Gwynedd</option><option value="3556">Hampshire</option><option value="3557">Herefordshire</option><option value="3558">Hertfordshire</option><option value="3559">Highlands</option><option value="3560">Inverclyde</option><option value="3561">Isle of Wight</option><option value="3562">Kent</option><option value="3563">Lancashire</option><option value="3564">Leicestershire</option><option value="3565">Lincolnshire</option><option value="3566">Merseyside</option><option value="3567">Merthyr Tydfil</option><option value="3568">Midlothian</option><option value="3569">Monmouthshire</option><option value="3570">Moray</option><option value="3571">Neath Port Talbot</option><option value="3572">Newport</option><option value="3573">Norfolk</option><option value="3574">North Ayrshire</option><option value="3575">North Lanarkshire</option><option value="3576">North Yorkshire</option><option value="3577">Northamptonshire</option><option value="3578">Northumberland</option><option value="3579">Nottinghamshire</option><option value="3580">Orkney Islands</option><option value="3581">Oxfordshire</option><option value="3582">Pembrokeshire</option><option value="3583">Perth and Kinross</option><option value="3584">Powys</option><option value="3585">Renfrewshire</option><option value="3586">Rhondda Cynon Taff</option><option value="3587">Rutland</option><option value="3588">Scottish Borders</option><option value="3589">Shetland Islands</option><option value="3590">Shropshire</option><option value="3591">Somerset</option><option value="3592">South Ayrshire</option><option value="3593">South Lanarkshire</option><option value="3594">South Yorkshire</option><option value="3595">Staffordshire</option><option value="3596">Stirling</option><option value="3597">Suffolk</option><option value="3598">Surrey</option><option value="3599">Swansea</option><option value="3600">Torfaen</option><option value="3601">Tyne and Wear</option><option value="3602">Vale of Glamorgan</option><option value="3603">Warwickshire</option><option value="3604">West Dunbartonshire</option><option value="3605">West Lothian</option><option value="3606">West Midlands</option><option value="3607">West Sussex</option><option value="3608">West Yorkshire</option><option value="3609">Western Isles</option><option value="3610">Wiltshire</option><option value="3611">Worcestershire</option><option value="3612">Wrexham</option></select>
                            </div>
                        </div>

                    </fieldset>
                    <fieldset>
                        <legend>Tu Contraseña</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password">Contraseña</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="" placeholder="Contraseña ..." id="input-password" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm">Confirma Contraseña</label>
                            <div class="col-sm-10">
                                <input type="password" name="confirm" value="" placeholder="Confirma Contraseña ..." id="input-confirm" class="form-control">
                            </div>
                        </div>





                        <div class="buttons">
                            <div class="pull-right"><span class="mg-add">Estas a punto de registrarte estas seguro?<a href="#" class="agree"><b>Politicas de Provacidad</b></a></span>
                                <input type="checkbox" name="agree" value="1">
                                &nbsp;
                                <input type="submit" value="Registrar" class="btn btn-primary">
                            </div>
                        </div>


                </form>
            </div>




        </div>
    </div>
</div> <!--DIV QUE CIERRA EL CONTAINER-->



</div> <!--DIV QUE CIERRA EL PAGE-->



<footer>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="footer-line"></div>
                </div>
            </div>
            <img src="images/ut2.png" style="width: 50px" alt="">Powered By <a href="https://www.opencart.com">SIDH</a><br> Sistema de Control de Horarios © 2017<!-- [[%FOOTER_LINK]] -->
        </div>
    </div>

</footer>
</body>
</html>
