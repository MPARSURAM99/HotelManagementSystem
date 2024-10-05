<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <%@ include file="component/bootStrapLink.jsp" %>
        <%@ include file="component/fontAwesome.jsp" %>
            <style>
                @keyframes change {
                    0% {
                        background-image: url("img/Ho4.jpg");
                    }

                    20% {
                        background-image: url("img/hotel4.jpg");
                    }

                    40% {
                        background-image: url("img/Ho6.jpg");
                    }

                    60% {
                        background-image: url("img/Ho4.jpg");
                    }

                    80% {
                        background-image: url("img/Ho4.jpg");
                    }

                    100% {
                        background-image: url("img/hotel2.jpg");
                    }
                }

                .image {
                    width: 100%;
                    height: 100vh;
                    overflow: hidden;
                    position: relative;
                    background-image: url("img/Ho4.jpg");
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    text-align: center;
                    justify-content: center;
                    animation: change 10s infinite ease-in-out;
                }

                .content {
                    color: white;
                    font-family: "jost";
                    position: absolute;
                    top: 35%;
                    left: 50%;
                    transform: translateX(-50%);
                }

                .class-section {
                    padding: 40px 0;
                }

                .feature {
                    background-color: white;
                    padding: 20px;
                    margin: 20px;
                    border-radius: 10px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                }

                .feature a:hover {
                    color: red;
                    text-decoration: none;
                }

                @media (max-width: 768px) {
                    .content {
                        top: 30%;
                        font-size: smaller;
                    }
                }

                h5 {
                    font-size: 40px;
                    padding: 0px;
                    margin-top: 0px;
                }

                .clss {
                    flex: 1;
                    margin-right: 20px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                }

                .clss2 {
                    width: 45vw;
                    height: 40vh;
                }

                .footer {
                    background-color: #333;
                    color: white;
                    padding: 40px 0;
                }

                .footer h3 {
                    margin-bottom: 20px;
                }

                .footer p {
                    margin: 5px 0;
                }

                .footer a {
                    color: #ffd700;
                    text-decoration: none;
                }

                .footer a:hover {
                    text-decoration: underline;
                }

                .social-icons img {
                    width: 30px;
                    margin: 0 10px;
                }
            </style>
    </head>

    <body>
        <%@include file="component/commonNavBar.jsp" %>
            <div class="image d-flex justify-content-center align-items-center">
                <div class="content text-center">
                    <h1><b>TRAVEL, ENJOY & RELAX</b></h1>
                    <h2><b>BE OUR GUEST</b></h2>
                </div>
            </div>

            <div class="container text-center my-5">
                <h2 class="text-uppercase mb-4">All Rooms</h2>
                <div class="row class-section">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature">
                            <img src="img/room1.jpg" alt="Hotel Image" class="img-fluid rounded"
                                style="height: 250px; object-fit: cover" />
                            <h3 class="mt-3">Single Room</h3>
                            <p>
                                Family Suite, are 1500 sqft rooms that can accommodate up to 4
                                individuals and is equipped with high tech comforts such as AC,
                                high speed internet access, work desk, smart TV and room service.
                            </p>
                            <a href="singleroom.jsp" class="btn btn-primary">Know More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature">
                            <img src="img/room4.jpg" alt="Hotel Image" class="img-fluid rounded"
                                style="height: 250px; object-fit: cover" />
                            <h3 class="mt-3">Double Room</h3>
                            <p>
                                Executive rooms, are a bit bigger compared to the Standard rooms
                                that can accommodate up to 2 persons and equipped with high tech
                                comforts such as AC, high speed internet access, work desk, TV and
                                room service.
                            </p>
                            <a href="doubleroom.jsp" class="btn btn-primary">Know More</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="feature">
                            <img src="img/room3.jpg" alt="Hotel Image" class="img-fluid rounded"
                                style="height: 250px; object-fit: cover" />
                            <h3 class="mt-3">Suite</h3>
                            <p>
                                Jr Suite, are 1500 sqft with a living room that can accommodate up
                                to 4 individuals and is equipped with high tech comforts such as
                                AC, high speed internet access, work desk, smart TV and room
                                service.
                            </p>
                            <a href="suite.jsp" class="btn btn-primary">Know More</a>
                        </div>
                    </div>
                </div>
            </div>
            <h5 class="text-center">More About Us</h5>
            <div class="container my-5">
                <div class="row">
                    <div class="col-md-6 mb-4">
                        <img src="img/Ho5.jpg" alt="Hotel Image" class="img-fluid rounded" />
                    </div>
                    <div class="col-md-6">
                        <h6 class="display-6"><u>About Us</u></h6>
                        <p>
                            The Central Park Hotel is the best 4-star hotel in Gwalior that
                            embraces its legacy of past 20 years of serving the travelers both
                            at domestic & at an international level of the tourism hospitality
                            sector.
                        </p>
                        <p>
                            This 4-star hotel in Gwalior is near the railway station at a
                            distance which takes just 5 minutes & is 20 minutes from the
                            Airport.
                        </p>
                        <p>
                            Hotel The Central Park endeavors the micro meticulous & engagement
                            hospitality to make your visit memorable and worth value for money.
                        </p>
                        <p>
                            There are 104 well-appointed rooms with classic amenities & luxury
                            to facilitate your elegant stay more pleasant.
                        </p>
                        <p>
                            Enjoy our popular leisurely Sunday Brunch at Coffee Shop and Fine
                            Dine at Cafe Multi-Cuisine restaurant & rosebud accolades of
                            delectable cuisine.
                        </p>
                    </div>
                </div>
            </div>
            <h5 class="text-center my-4">Eat & Drink</h5>
            <div class="container my-5">
                <!-- First Row -->
                <div class="row mb-4">
                    <div class="col-md-6 mb-4">
                        <img src="img/food1.jpeg" alt="Hotel Image" class="img-fluid rounded" />
                    </div>
                    <div class="col-md-6 d-flex align-items-center">
                        <div>
                            <h6 class="display-6"><u>Exquisite Cuisine</u></h6>
                            <p>
                                Here at our restaurant & cafes, we offer exquisite cuisines which
                                are fresh and finger-licking delicious. Our expert chefs' dishes
                                will never let you down. Visit the best multi-cuisine restaurant
                                in Gwalior.<br />
                                Call us at +91-7514011140, 41,42,43 & +917773001690
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-md-6 order-md-2 mb-4">
                        <img src="img/HOSP.jpg" alt="Hotel Image" class="img-fluid rounded" />
                    </div>
                    <div class="col-md-6 d-flex align-items-center order-md-1">
                        <div>
                            <h6 class="display-6"><u>Excellent Hospitality</u></h6>
                            <p>
                                Here at our restaurant & cafes, we offer exquisite cuisines which
                                are fresh and finger-licking delicious. Our expert chefs' dishes
                                will never let you down. Visit the best multi-cuisine restaurant
                                in Gwalior.<br />
                                Call us at +91-7514011140, 41,42,43 & +917773001690
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-md-6 mb-4">
                        <img src="img/Event.jpg" alt="Hotel Image" class="img-fluid rounded" />
                    </div>
                    <div class="col-md-6 d-flex align-items-center">
                        <div>
                            <h6 class="display-6"><u>Birthdays and Events</u></h6>
                            <p>
                                Here at our restaurant & cafes, we offer exquisite cuisines which
                                are fresh and finger-licking delicious. Our expert chefs' dishes
                                will never let you down. Visit the best multi-cuisine restaurant
                                in Gwalior.<br />
                                Call us at +91-7514011140, 41,42,43 & +917773001690
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container my-5">
                <h5 class="text-center"><b>Our Guest Feedback</b></h5>

                <div class="row my-4">
                    <div class="col-md-12">
                        <p class="text-center">
                            <b>"Located just near the Gwalior fort in city (perfect location),
                                the hotel is clean and provides you great hospitality. The hotel
                                Manager is very helpful and will guide you throughout your stay.
                                The hotel provides almost every facility from good rooms to
                                excellent food & services."</b>
                        </p>
                        <div class="text-center">
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                        </div>
                        <h6 class="text-center mt-3">Rahul Shrama</h6>
                    </div>
                </div>

                <div class="row my-4">
                    <div class="col-md-12">
                        <p class="text-center">
                            <b>"Very neat & clean big rooms with no disturbance. Sanity
                                maintained nicely. Staff was so good. Very nice facilities."</b>
                        </p>
                        <div class="text-center">
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                        </div>
                        <h6 class="text-center mt-3">Megha Pandit</h6>
                    </div>
                </div>

                <div class="row my-4">
                    <div class="col-md-12">
                        <p class="text-center">
                            <b>"I had a wonderful stay at the Central Park Hotel! The staff was
                                friendly and attentive, making us feel right at home. The room was
                                clean and comfortable, with all the amenities we needed. The
                                location was perfect for exploring the city. I highly recommend
                                this hotel for a relaxing getaway!"</b>
                        </p>
                        <div class="text-center">
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                            <span class="fa fa-star fa-2x" style="color: gold"></span>
                        </div>
                        <h6 class="text-center mt-3">Manisha Sahoo</h6>
                    </div>
                </div>
            </div>
            <div class="footer text-center">
                <div class="container">
                    <div class="footerlogo mb-4">
                        <img src="img/PARKLOGO.png" alt="Hotel Logo" class="img-fluid" style="max-width: 150px" />
                    </div>
                    <h3>Contact Us</h3>
                    <p>The Central Park</p>
                    <p>123 Main Street, Downtown City, Gwalior</p>
                    <p>
                        Email:
                        <a href="mailto:info@hotelmanagement.com">info@thecentralpark.com</a>
                    </p>
                    <p>Phone: +1 (234) 567-890</p>

                    <div class="social-icons mb-4">
                        <a href="#" target="_blank">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg"
                                alt="Facebook" />
                        </a>
                        <a href="#" target="_blank">
                            <img src="https://e7.pngegg.com/pngimages/708/311/png-clipart-twitter-twitter-thumbnail.png"
                                alt="Twitter" />
                        </a>
                        <a href="#" target="_blank">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"
                                alt="Instagram" />
                        </a>
                    </div>
                    <p>&copy; 2024 Hotel Management System. All rights reserved.</p>
                </div>
            </div>
    </body>

    </html>