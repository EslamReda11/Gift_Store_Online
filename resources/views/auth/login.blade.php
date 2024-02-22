@extends('layouts.app')
@section('title')
GIFT STORE-Login
@endsection

@section('keywords')
    Login in GIFT STORE, signin
@endsection

@section('description')
@endsection


@section('content')
    <div align="center" class="container-fluid my-3 animated bounceIn">

        <div class="col-md-2">
            <a href="/">
                <img src="{{ asset('assets/img/Logo-Square.PNG') }}" class="img-fluid px-2 py-2" style="width:200px;">
            </a>
        </div>
        <h5 class="my-2" style="font-weight: 900">Login</h5><br> <br>
        <div class="row justify-content-center">
            <div class="col-md-7">
                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div class="form-group row justify-content-center">

                        <div class="col-md-6">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                name="email" value="{{ old('email') }}" required placeholder="{{ __('E-Mail Address') }}"
                                autocomplete="email" autofocus>

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row justify-content-center">

                        <div class="col-md-6">
                            <input id="password" type="password"
                                class="form-control @error('password') is-invalid @enderror" name="password" required
                                placeholder="{{ __('Password') }}" autocomplete="current-password">

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row ">
                        <div class="col-md-6 offset-md-3">
                            <div class="form-check" align="left">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                    {{ old('remember') ? 'checked' : '' }}>

                                <label class="form-check-label" for="remember">
                                    {{ __('Remember Me') }}
                                </label> <br>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row mb-0 justify-content-center">
                        <div class="col-md-12 ">
                            <button type="submit" class="btaobtn btaobtn-dark px-5 py-2">
                                {{ __('Login') }}
                            </button>

                            @if (Route::has('password.request'))
                                <a class="btn btn-link col-md-12" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                            @endif
                            <strong>Not Having an Account! <br>Then <a href="register"><u>Create a New
                                        Account</u></a></strong>
                        </div>
                        <div class="col-md-12 ">
                            <p class="my-2">
                                <a class="black-text" href="/">
                                    <i class="fas fa-arrow-left"></i>
                                    <u>Back to GIFT STORE</u>
                                </a>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div> <br>

<footer id="footer" class="page-footer font-small  pt-4" style="background:indigo;">
    <div class="container text-center text-md-left">
        <div class="row d-flex align-items-center">
            <div class="col-md-7 col-lg-8">

                <a href="#">
                    <strong>GIFT STORE</strong>
                </a>
                <br>
                <span>&#169;All Right Reserved . Designed By <a href="https://github.com/EslamReda11" target="_blank"
                        style=" font-family: 'Balsamiq Sans', cursive;"><u>Eng.Eslam Reda</u></a> </span>
                </p>
            </div>
            <div class="col-md-5 col-lg-4 ml-lg-0">
                <!-- Social buttons -->
                <div class="text-center text-md-right">
                    <ul class="list-unstyled list-inline">
                        <li class="list-inline-item">
                            <a href="https://www.facebook.com/eslam.zizo.9862?mibextid=ZbWKwL"
                                class="btn-floating btn-sm rgba-white-slight mx-1" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://x.com/_EslamReda?t=iyAGPnDPnznfeoVVWK565g&s=09"
                                class="btn-floating btn-sm rgba-white-slight mx-1" target="_blank">
                                {{-- <i class="fab fa-twitter"></i> --}}
                                <img src="{{asset('assets/X_icon.png')}}" alt="" style="width: 15px;height:20px ;">
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://www.instagram.com/eslamreda1236?igsh=NjU4a2R0emNqMjMy"
                                class="btn-floating btn-sm rgba-white-slight mx-1" target="_blank">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://www.linkedin.com/in/eslam-reda-86a216243/"
                                class="btn-floating btn-sm rgba-white-slight mx-1" target="_blank">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
@endsection
