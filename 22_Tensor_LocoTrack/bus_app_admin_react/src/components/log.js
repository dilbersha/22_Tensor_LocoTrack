import React from "react";
import "../components/login.css";
import {Link} from "react-router-dom";
const Login=()=>{
    return(
   <div>
  <div className="login-box pos">
    {/* /.login-logo */}
    <div className="card card-outline card-primary">
      <div className="card-header text-center">
        <a href="../../index2.html" className="h1"><b>Admin Login</b></a>
      </div>
      <div className="card-body">
        <form action="../../index.html" method="post">
          <div className="input-group mb-3">
            <input type="email" className="form-control" placeholder="Email" />
            <div className="input-group-append">
              <div className="input-group-text">
                <span className="fas fa-envelope" />
              </div>
            </div>
          </div>
          <div className="input-group mb-3">
            <input type="password" className="form-control" placeholder="Password" />
            <div className="input-group-append">
              <div className="input-group-text">
                <span className="fas fa-lock" />
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-8">
              <div className="icheck-primary">
                <input type="checkbox" id="remember" />
                <label htmlFor="remember"> Remember Me </label>
              </div>
            </div>
            {/* /.col */}
            <Link to={"/home"}>
            <div className="col-4">
            <div class="col-auto">
            <button type="submit" class="btn btn-primary mb-3">Login</button>
             </div>
            </div>
            </Link>
           
            {/* /.col */}
          </div>
        </form>
        {/* /.social-auth-links */}
      </div>
      {/* /.card-body */}
    </div>
    {/* /.card */}
  </div>
</div>


    );
}

export default Login;