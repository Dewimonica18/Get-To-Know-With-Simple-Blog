@extends('layouts.main')

@section('container')
    <center>
        <div class="content pt-2">
            <h3 class="fw-light">Contact Us</h3>
            <p>You can use this page to give criticism or input about our website</p>
        </div>
    </center>
    <div class="container-contact pb-5">
        <div class="contactInfo">
            <div class="box">
                <div class="icon"><i class="uil uil-map-marker"></i></div>
                <div class="text">
                    <h3>Address</h3>
                    <p>Kel.Sukasari, <br> Kec, Tangerang,<br>Indonesia</p>
                </div>
            </div>
            <div class="box">
                <div class="icon"><i class="uil uil-phone"></i></div>
                <div class="text">
                    <h3>Phone</h3>
                    <p>021-xxxx-xx</p>
                </div>
            </div>
            <div class="box">
                <div class="icon"><i class="uil uil-envelope"></i></div>
                <div class="text">
                    <h3>Email</h3>
                    <p>example@gmail.com</p>
                </div>
            </div>
        </div>
        <div class="contactForm">
            <form action="/contact_us" method="post">
                @csrf
                <h2>Send Message</h2>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Email address</label>
                    <input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Detail</label>
                    <textarea name="detail" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="inputBox">
                    <input type="submit" name="submit" value="Submit">
                </div>
            </form>
        </div>  
    </div>  
@endsection