<link rel="stylesheet" href="/css/style.css">
<nav class="navbar navbar-expand-lg navbar-light navbar sticky-top" style="background-color: #e9e8e6;">
    <div class="container-fluid">
        <a href="/"><img class="logo" src="/img/logo.png"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav" >
            <ul class="navbar-nav" class="fs-5">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('/') ? 'active' : '' }}" href="/">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">About</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item {{ Request::is('education') ? 'active' : '' }}" href="/education">Education</a></li>
                        <li><a class="dropdown-item {{ Request::is('course') ? 'active' : '' }}" href="/course">Course Schedule</a></li>
                        <li><a class="dropdown-item {{ Request::is('activity') ? 'active' : '' }}" href="/activity">Activity</a></li>
                      </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('posts') ? 'active' : '' }}" href="/posts">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('categories') ? 'active' : '' }}" href="/categories">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('contact_us') ? 'active' : '' }}" href="/contact_us">Contact Us</a>
                </li>
            </ul>

            <ul class="navbar-nav ms-auto">
                @auth
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Welcome back, {{ auth()->user()->name }}
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="/dashboard"><i class="uil uil-web-section"></i> My Dashboard</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li>
                        <form action="/logout" method="post">
                            @csrf
                            <button type="submit" class="dropdown-item"><i class="uil uil-signout"></i> Logout</button>
                        </form>
                      </li>
                    </ul>
                  </li>
                @else
                    <li class="nav-item">
                        <a href="/login" class="nav-link { ($active === "login") ? 'active' : '' }}"><i class="uil uil-signin"></i>Login</a>
                    </li>
                @endauth
            </ul>
        </div>
    </div>
</nav>