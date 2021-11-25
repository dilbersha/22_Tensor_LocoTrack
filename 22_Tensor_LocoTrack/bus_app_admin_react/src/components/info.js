import React from "react";
import Side from "../components/sidebar";
import "../components/info.css";
const Info =()=>{
  
    return(
      <div>
  <Side/>
 <section className="content">
  <div className="container-fluid">
    {/* Small boxes (Stat box) */}
    <div className="row">
      <div className="col-lg-3 col-6">
        {/* small box */}
        <div className="small-box bg-info">
          <div className="inner">
            
            <p>Total Users</p>
            <h3>12383</h3>
          </div>
          <div className="icon">
          <i class="fas fa-user"></i>
          </div>
          <a href="/" className="small-box-footer">More info <i className="fas fa-arrow-circle-right" /></a>
        </div>
      </div>
      {/* ./col */}
      <div className="col-lg-3 col-6">
        {/* small box */}
        <div className="small-box bg-success">
          <div className="inner">
          <p>Bus Stations</p>
            <h3>53</h3>
           
          </div>
          <div className="icon">
            <i className="ion ion-stats-bars" />
          </div>
          <a href="/" className="small-box-footer">More info <i className="fas fa-arrow-circle-right" /></a>
        </div>
      </div>
      {/* ./col */}
      <div className="col-lg-3 col-6">
        {/* small box */}
        <div className="small-box bg-warning">
          <div className="inner">
          <p>Bus Routes</p>
            <h3>3410</h3>
           
          </div>
          <div className="icon">
          <i class="fas fa-route"></i>
          </div>
          <a href="/" className="small-box-footer">More info <i className="fas fa-arrow-circle-right" /></a>
        </div>
      </div>
      {/* ./col */}
      <div className="col-lg-3 col-6">
        {/* small box */}
        <div className="small-box bg-danger">
          <div className="inner">
          <p>Total Buses</p>
            <h3>3410</h3>
           
          </div>
          <div className="icon">
          <i class="fas fa-bus"></i>
          </div>
          <a href="/" className="small-box-footer">More info <i className="fas fa-arrow-circle-right" /></a>
        </div>
      </div>
      {/* ./col */}
    </div>
  </div>
</section>

</div>




    );
}

export default Info;