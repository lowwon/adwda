@extends('layout')
@section('content')
<div style="margin-top : -54px;margin-right:30%;float : right; width: 200px;height: 10px;">
    <input type="text" style="display: inline-block;border-radius: 8px 8px 8px 8px" class="form-control" placeholder="Tìm kiếm">
</div>
@if(Auth::check())
    <div style="margin-top : -48px;margin-right:100px;float : right; width: 40px;height: 20px;">
        @if(count($noti) == 0)
            <img id="show" style="float: right;display: inline-block;width: 30px;height:30px;" src="images/tb.jpg">
        @else
            <img id="show" style="float: right;display: inline-block;width: 30px;height:30px;" src="images/tb1.jpg">
        @endif
        <div id="content" style="float: right; font-size: 17px; border-radius:15px 15px 15px 15px; position: relative;display: none; width: 300px; max-height: 580px; margin-top: 20px;background: linear-gradient(to right, #e2ddf0, #a9ff9e);">
            <div style="font-size:30px;margin-top: 10px;margin-left: 20px">
                <strong >Thông báo</strong>
            </div>
            <hr style="margin : 10px">
            @if(count($noti) == 0)
                <div style="position: static; margin-bottom:10px; margin-top:10px; text-align: center"> 
                    <p>Thông báo trống</p>
                    <hr style="margin : 10px">
                </div>
                <script>
                    document.getElementById("show").onclick = function () {
                        if( document.getElementById("content").style.display == 'none')
                        {
                            document.getElementById("content").style.display = 'block';
                            document.getElementById("show").src = 'images/tb2.jpg';
                        }
                        else 
                        {
                            document.getElementById("content").style.display = 'none';
                            document.getElementById("show").src = 'images/tb.jpg';
                        }
        
                            return false;
                    };
                </script>
            @else 
                @foreach ($noti as $n)
                    <div style="position: static;margin: 20px"> 
                        <a href="{{route('changeNoti',['id'=>$n->id])}}">{{$n->content}}</a>
                        <p style="float: right;font-size: 10px;margin-top: 5px">{{$n->date}}</p>
                        <hr style="margin-top:20px">
                    </div>
                @endforeach
                <script>
                    document.getElementById("show").onclick = function () {
                        if( document.getElementById("content").style.display == 'none')
                        {
                            document.getElementById("content").style.display = 'block';
                            document.getElementById("show").src = 'images/tb2.jpg';
                        }
                        else 
                        {
                            document.getElementById("content").style.display = 'none';
                            document.getElementById("show").src = 'images/tb1.jpg';
                        }
        
                            return false;
                    };
                </script>
            @endif
            <div style="position: static ;bottom: 0px; margin-bottom:10px; text-align: center">
                <a style="opacity: 1.0" href="#">View All</a>
            </div>
        </div>
    </div>
@endif
    <div class="container-fluid row" style="max-height: 700px;margin-bottom: 100px">
        <div class="col-6" style="font-size: 30px;margin-left: 10%; margin-top: 70px">
            @if (Auth::user()->id == $user->id || Auth::user()->role_id > 2)
            @if($errors->any())
            <div class="alert text-danger">
                <ul>
                    @foreach ($errors->all() as $e)
                    <li>
                        {{$e}}
                    </li>
                    @endforeach
                </ul>
            </div>
            @endif
            <form method="POST" action="{{route('updateAvatar',['id'=>$user->id])}}" enctype="multipart/form-data">
                {{csrf_field()}}
                <div >
                    <img id="imgs" style="border: 5px soild black; margin-top:-40px;margin-bottom: 40px; border-radius: 50px 50px 50px 50px; display: inline-block" width="200px" height="200px" src="images/{{$user->avatar}}">
                    <label style="margin-left: 40px; margin-top:-50px;  font-size: 20px;border-radius :10px 10px 10px 10px; background-color: black;color:white; display: inline-block;  cursor: pointer; padding : 6px 7px" >
                        <input name="fileUpLoad" id = "fileUpLoad" style = "display: none" type="file" accept="image/png, image/gif, image/jpeg"/>
                        Chosse Image
                    </label>
                    <label style=" margin-top:-50px;  font-size: 20px;border-radius :10px 10px 10px 10px; background-color: black;color:white; display: inline-block;  cursor: pointer; padding : 6px 7px" >
                        <button style = "display: none" type="submit" value="Change Avatar" class="btn btn-dark"></button>Change Avatar
                    </label>
                          
                    <script>
                        document.getElementById("fileUpLoad").onchange = function(){
                            var reader = new FileReader();
                            reader.onload = function(e){
                                document.getElementById("imgs").src = e.target.result;
                            }
                        reader.readAsDataURL(this.files[0]);
                        }
                    </script>      
                </div>
            </form>
            <form method="POST" action="{{route('updateUser',['id'=>$user->id])}}" enctype="multipart/form-data">
                {{csrf_field()}}
                <div> 
                    Name : 
                    <input required ="name" name="name" type="text" value="{{$user->name}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >
                </div> 
                <div style="margin-top: 20px"> 
                    Email : 
                    <input required id='email' name="email" type="text" value="{{$user->email}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >
                </div> 
                <div  style="margin-top: 20px"> 
                    Birthday : 
                    <input required id="birthday" name="birthday" type="date" value="{{$user->birthday}}" style="width: 500px: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >            
                </div> 
                <div  style="margin-top: 20px"> 
                    Sex :
                    <select required id="sex" name="sex" value="{{$user->sex}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px"  >
                        <option value="Nam">Nam</option>
                        <option value="Nữ">Nữ</option>
                        <option value="LGBT">LGBT</option>
                    </select>  
                </div> 
                <div  style="margin-top: 20px"> 
                    Phone :
                    <input required id="phone" name="phone" type="number" value="{{$user->phone}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >            
                </div>
                <div  style="margin-top: 20px">
                    Country :
                    <select required id="ct" name="ct" value="{{$user->phone}}" style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px">
                        <option value="Afghanistan">Afghanistan</option>
                        <option value="Albania">Albania</option>
                        <option value="Algeria">Algeria</option>
                        <option value="American Samoa">American Samoa</option>
                        <option value="Andorra">Andorra</option>
                        <option value="Angola">Angola</option>
                        <option value="Anguilla">Anguilla</option>
                        <option value="Antartica">Antarctica</option>
                        <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                        <option value="Argentina">Argentina</option>
                        <option value="Armenia">Armenia</option>
                        <option value="Aruba">Aruba</option>
                        <option value="Australia">Australia</option>
                        <option value="Austria">Austria</option>
                        <option value="Azerbaijan">Azerbaijan</option>
                        <option value="Bahamas">Bahamas</option>
                        <option value="Bahrain">Bahrain</option>
                        <option value="Bangladesh">Bangladesh</option>
                        <option value="Barbados">Barbados</option>
                        <option value="Belarus">Belarus</option>
                        <option value="Belgium">Belgium</option>
                        <option value="Belize">Belize</option>
                        <option value="Benin">Benin</option>
                        <option value="Bermuda">Bermuda</option>
                        <option value="Bhutan">Bhutan</option>
                        <option value="Bolivia">Bolivia</option>
                        <option value="Bosnia and Herzegowina">Bosnia and Herzegowina</option>
                        <option value="Botswana">Botswana</option>
                        <option value="Bouvet Island">Bouvet Island</option>
                        <option value="Brazil">Brazil</option>
                        <option value="Brunei Darussalam">Brunei Darussalam</option>
                        <option value="Bulgaria">Bulgaria</option>
                        <option value="Burkina Faso">Burkina Faso</option>
                        <option value="Burundi">Burundi</option>
                        <option value="Cambodia">Cambodia</option>
                        <option value="Cameroon">Cameroon</option>
                        <option value="Canada">Canada</option>
                        <option value="Cape Verde">Cape Verde</option>
                        <option value="Cayman Islands">Cayman Islands</option>
                        <option value="Central African Republic">Central African Republic</option>
                        <option value="Chad">Chad</option>
                        <option value="Chile">Chile</option>
                        <option value="China">China</option>
                        <option value="Christmas Island">Christmas Island</option>
                        <option value="Cocos Islands">Cocos (Keeling) Islands</option>
                        <option value="Colombia">Colombia</option>
                        <option value="Comoros">Comoros</option>
                        <option value="Congo">Congo</option>
                        <option value="Congo">Congo, the Democratic Republic of the</option>
                        <option value="Cook Islands">Cook Islands</option>
                        <option value="Costa Rica">Costa Rica</option>
                        <option value="Cota D'Ivoire">Cote d'Ivoire</option>
                        <option value="Croatia">Croatia (Hrvatska)</option>
                        <option value="Cuba">Cuba</option>
                        <option value="Cyprus">Cyprus</option>
                        <option value="Czech Republic">Czech Republic</option>
                        <option value="Denmark">Denmark</option>
                        <option value="Djibouti">Djibouti</option>
                        <option value="Dominica">Dominica</option>
                        <option value="Dominican Republic">Dominican Republic</option>
                        <option value="East Timor">East Timor</option>
                        <option value="Ecuador">Ecuador</option>
                        <option value="Egypt">Egypt</option>
                        <option value="El Salvador">El Salvador</option>
                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                        <option value="Eritrea">Eritrea</option>
                        <option value="Estonia">Estonia</option>
                        <option value="Ethiopia">Ethiopia</option>
                        <option value="Falkland Islands">Falkland Islands</option>
                        <option value="Faroe Islands">Faroe Islands</option>
                        <option value="Fiji">Fiji</option>
                        <option value="Finland">Finland</option>
                        <option value="France">France</option>
                        <option value="France Metropolitan">France, Metropolitan</option>
                        <option value="French Guiana">French Guiana</option>
                        <option value="French Polynesia">French Polynesia</option>
                        <option value="French Southern Territories">French Southern</option>
                        <option value="Gabon">Gabon</option>
                        <option value="Gambia">Gambia</option>
                        <option value="Georgia">Georgia</option>
                        <option value="Germany">Germany</option>
                        <option value="Ghana">Ghana</option>
                        <option value="Gibraltar">Gibraltar</option>
                        <option value="Greece">Greece</option>
                        <option value="Greenland">Greenland</option>
                        <option value="Grenada">Grenada</option>
                        <option value="Guadeloupe">Guadeloupe</option>
                        <option value="Guam">Guam</option>
                        <option value="Guatemala">Guatemala</option>
                        <option value="Guinea">Guinea</option>
                        <option value="Guinea-Bissau">Guinea-Bissau</option>
                        <option value="Guyana">Guyana</option>
                        <option value="Haiti">Haiti</option>
                        <option value="Holy See">Holy See</option>
                        <option value="Honduras">Honduras</option>
                        <option value="Hong Kong">Hong Kong</option>
                        <option value="Hungary">Hungary</option>
                        <option value="Iceland">Iceland</option>
                        <option value="India">India</option>
                        <option value="Indonesia">Indonesia</option>
                        <option value="Iran">Iran (Islamic Republic of)</option>
                        <option value="Iraq">Iraq</option>
                        <option value="Ireland">Ireland</option>
                        <option value="Israel">Israel</option>
                        <option value="Italy">Italy</option>
                        <option value="Jamaica">Jamaica</option>
                        <option value="Japan">Japan</option>
                        <option value="Jordan">Jordan</option>
                        <option value="Kazakhstan">Kazakhstan</option>
                        <option value="Kenya">Kenya</option>
                        <option value="Kiribati">Kiribati</option>
                        <option value="Democratic People's Republic of Korea">Korea</option>
                        <option value="Korea">Korea, Republic of</option>
                        <option value="Kuwait">Kuwait</option>
                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                        <option value="Lao">Lao People's Democratic Republic</option>
                        <option value="Latvia">Latvia</option>
                        <option value="Lebanon" selected>Lebanon</option>
                        <option value="Lesotho">Lesotho</option>
                        <option value="Liberia">Liberia</option>
                        <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                        <option value="Liechtenstein">Liechtenstein</option>
                        <option value="Lithuania">Lithuania</option>
                        <option value="Luxembourg">Luxembourg</option>
                        <option value="Macau">Macau</option>
                        <option value="Macedonia">Macedonia</option>
                        <option value="Madagascar">Madagascar</option>
                        <option value="Malawi">Malawi</option>
                        <option value="Malaysia">Malaysia</option>
                        <option value="Maldives">Maldives</option>
                        <option value="Mali">Mali</option>
                        <option value="Malta">Malta</option>
                        <option value="Marshall Islands">Marshall Islands</option>
                        <option value="Martinique">Martinique</option>
                        <option value="Mauritania">Mauritania</option>
                        <option value="Mauritius">Mauritius</option>
                        <option value="Mayotte">Mayotte</option>
                        <option value="Mexico">Mexico</option>
                        <option value="Micronesia">Micronesia</option>
                        <option value="Moldova">Moldova, Republic of</option>
                        <option value="Monaco">Monaco</option>
                        <option value="Mongolia">Mongolia</option>
                        <option value="Montserrat">Montserrat</option>
                        <option value="Morocco">Morocco</option>
                        <option value="Mozambique">Mozambique</option>
                        <option value="Myanmar">Myanmar</option>
                        <option value="Namibia">Namibia</option>
                        <option value="Nauru">Nauru</option>
                        <option value="Nepal">Nepal</option>
                        <option value="Netherlands">Netherlands</option>
                        <option value="Netherlands Antilles">Netherlands Antilles</option>
                        <option value="New Caledonia">New Caledonia</option>
                        <option value="New Zealand">New Zealand</option>
                        <option value="Nicaragua">Nicaragua</option>
                        <option value="Niger">Niger</option>
                        <option value="Nigeria">Nigeria</option>
                        <option value="Niue">Niue</option>
                        <option value="Norfolk Island">Norfolk Island</option>
                        <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                        <option value="Norway">Norway</option>
                        <option value="Oman">Oman</option>
                        <option value="Pakistan">Pakistan</option>
                        <option value="Palau">Palau</option>
                        <option value="Panama">Panama</option>
                        <option value="Papua New Guinea">Papua New Guinea</option>
                        <option value="Paraguay">Paraguay</option>
                        <option value="Peru">Peru</option>
                        <option value="Philippines">Philippines</option>
                        <option value="Pitcairn">Pitcairn</option>
                        <option value="Poland">Poland</option>
                        <option value="Portugal">Portugal</option>
                        <option value="Puerto Rico">Puerto Rico</option>
                        <option value="Qatar">Qatar</option>
                        <option value="Reunion">Reunion</option>
                        <option value="Romania">Romania</option>
                        <option value="Russia">Russian Federation</option>
                        <option value="Rwanda">Rwanda</option>
                        <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option> 
                        <option value="Saint LUCIA">Saint LUCIA</option>
                        <option value="Saint Vincent">Saint Vincent and the Grenadines</option>
                        <option value="Samoa">Samoa</option>
                        <option value="San Marino">San Marino</option>
                        <option value="Sao Tome and Principe">Sao Tome and Principe</option> 
                        <option value="Saudi Arabia">Saudi Arabia</option>
                        <option value="Senegal">Senegal</option>
                        <option value="Seychelles">Seychelles</option>
                        <option value="Sierra">Sierra Leone</option>
                        <option value="Singapore">Singapore</option>
                        <option value="Slovakia">Slovakia (Slovak Republic)</option>
                        <option value="Slovenia">Slovenia</option>
                        <option value="Solomon Islands">Solomon Islands</option>
                        <option value="Somalia">Somalia</option>
                        <option value="South Africa">South Africa</option>
                        <option value="Span">Spain</option>
                        <option value="SriLanka">Sri Lanka</option>
                        <option value="St. Helena">St. Helena</option>
                        <option value="Sudan">Sudan</option>
                        <option value="Suriname">Suriname</option>
                        <option value="Swaziland">Swaziland</option>
                        <option value="Sweden">Sweden</option>
                        <option value="Switzerland">Switzerland</option>
                        <option value="Syria">Syrian Arab Republic</option>
                        <option value="Taiwan">Taiwan, Province of China</option>
                        <option value="Tajikistan">Tajikistan</option>
                        <option value="Tanzania">Tanzania</option>
                        <option value="Thailand">Thailand</option>
                        <option value="Togo">Togo</option>
                        <option value="Tokelau">Tokelau</option>
                        <option value="Tonga">Tonga</option>
                        <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                        <option value="Tunisia">Tunisia</option>
                        <option value="Turkey">Turkey</option>
                        <option value="Turkmenistan">Turkmenistan</option>
                        <option value="Turks and Caicos">Turks and Caicos Islands</option>
                        <option value="Tuvalu">Tuvalu</option>
                        <option value="Uganda">Uganda</option>
                        <option value="Ukraine">Ukraine</option>
                        <option value="United Arab Emirates">United Arab Emirates</option>
                        <option value="United Kingdom">United Kingdom</option>
                        <option value="United States">United States</option>
                        <option value="Uruguay">Uruguay</option>
                        <option value="Uzbekistan">Uzbekistan</option>
                        <option value="Vanuatu">Vanuatu</option>
                        <option value="Venezuela">Venezuela</option>
                        <option value="Vietnam">Viet Nam</option>
                        <option value="Virgin Islands (British)">Virgin Islands (British)</option>
                        <option value="Virgin Islands (U.S)">Virgin Islands (U.S.)</option>
                        <option value="Wallis and Futana Islands">Wallis and Futuna Islands</option>
                        <option value="Western Sahara">Western Sahara</option>
                        <option value="Yemen">Yemen</option>
                        <option value="Serbia">Serbia</option>
                        <option value="Zambia">Zambia</option>
                        <option value="Zimbabwe">Zimbabwe</option>
                    </select>   
                </div>    
                <div style="margin-top: 20px; float: right;margin-right: 170px">
                    <input type="submit" value="Cập nhật" class="btn btn-dark"> 
                </div>
            </form>
            @else 
            <div >
                <img id="imgs" style="border: 5px soild black; margin-top:-40px;margin-bottom: 40px; border-radius: 50px 50px 50px 50px; display: inline-block" width="200px" height="200px" src="images/{{$user->avatar}}">      
            </div>
            <div> 
                Name : 
                <p style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >{{$user->name}} </p>
            </div> 
            <div style="margin-top: 20px"> 
                Email : 
                <p style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" >{{$user->email}}</p>
            </div> 
            <div  style="margin-top: 20px"> 
                Birthday : 
                <p { style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" > {{$user->birthday}} </p>         
            </div> 
            <div  style="margin-top: 20px"> 
                Sex :
                <p style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" > {{$user->sex}}  </p>          
            </div> 
            <div style="margin-top: 20px"> 
                Phone :
                <p style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" > 
                    @php
                        if(strlen($user->phone) > 7)
                        {
                            $a = substr($user->phone,0,7)."***";
                            echo $a;
                        }
                        else
                        {
                            $f = 10-strlen($user->phone);
                            $i = 0;
                            $x = "";
                            for($i = 0; $i < $f; $i++)
                            {
                                $x .= "*";
                            }
                            echo $user->phone.$x;
                        }
                    @endphp
                </p>        
            </div>
            <div style="margin-top: 20px">
                Contry :
                <p  style="display: inline-block; border-radius: 5px 5px 5px 5px; float: right;margin-right: 170px" > {{$user->country}}  </p>         
            </div>
            @endif
            <script>
            </script>
        </div>
        <div class="col-4" style="max-height: 700px" > 
            <div>
                <p style="font-size: 30px; margin-top:20px"><strong>Các bài viết gần đây</strong></p>
                @foreach ($post as $p)
                    <p style="font-size: 20px; margin-top:20px" ><a href="{{route('viewPost',['id'=>$p->id])}}">{{$p->Name}}</a></p>
                    <hr style="margin-top:10px" >
                @endforeach

            </div>
        </div>
    </div>
@stop