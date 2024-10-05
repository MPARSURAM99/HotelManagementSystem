    <nav class="navbar navbar-expand-lg navbar-dark bg-primary bg-gradient fixed-top">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><img alt="" src="img/logo.png" class="img-fluid" style="max-height: 40px; width: auto;"></a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#"
                >About Us</a
              >
            </li>

            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#"
                >Contact Us</a
              >
            </li>
          </ul>

          <div class="btn-group me-5 text-dark">
            <button
              type="button"
              class="btn btn-light dropdown-toggle"
              data-bs-toggle="dropdown"
              data-bs-display="dynamic"
              aria-expanded="false"
            >
              Book Now
            </button>
            <ul class="dropdown-menu dropdown-menu-start">
              <li><a class="dropdown-item" href="bookNow.jsp">Book Now</a></li>
              <li><a class="dropdown-item" href="bookingDetails.jsp">Booking details</a></li>
            </ul>
          </div>
          <div class="btn-group me-5 text-dark">
            <button
              type="button"
              class="btn btn-light dropdown-toggle"
              data-bs-toggle="dropdown"
              data-bs-display="dynamic"
              aria-expanded="false"
            >
              Admin Panel
            </button>
            <ul class="dropdown-menu dropdown-menu-start">
              <li><a class="dropdown-item" href="receptionLogin.jsp">Reception</a></li>
              <li><a class="dropdown-item" href="adminLogin.jsp">Admin</a></li>
            </ul>
          </div>
        </div>
      </div>
    </nav>