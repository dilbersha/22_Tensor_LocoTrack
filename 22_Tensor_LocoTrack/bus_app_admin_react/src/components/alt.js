import React from "react";
import Side from "../components/sidebar";
import "../components/pic.css";
import {Link} from "react-router-dom";
const Alt =()=>{

    return(
      <div>
      <Side/>
      <div className="container">
  <div className="card card-solid">
    <div className="card-body pb-0">
      <div className="row">
        <div className="
              col-12 col-sm-6 col-md-4
              d-flex
              align-items-stretch
              flex-column
            ">
          <div className="card bg-light d-flex flex-fill">
            <div className="card-header text-muted border-bottom-0" />
            <div className="card-body pt-0">
              <div className="row">
                <div className="col-7">
                  <h2 className="lead"><b>Blue Hill</b></h2>
                  <ul className="ml-4 mb-0 fa-ul text-muted">
                    <li className="small">
                      <span className="fa-li"><i className="fas fa-lg fa-building" /></span>
                      Bus No: KL 60J 2435
                    </li>
                    <li className="small">
                      <span className="fa-li"><i className="fas fa-lg fa-phone" /></span>
                      Phone #: + 91 91888 34333
                    </li>
                  </ul>
                </div>
                <div className="col-5 text-center">
                  <img src="../../dist/img/1.jpg" alt="user-avatar" className="img-circle img-fluid" />
                </div>
              </div>
            </div>
            <div className="card-footer">
              <div className="text-right">
                <a href="/" className="btn btn-sm btn-primary">
                <i class="fas fa-route"></i> View route
                </a>
              </div>
            </div>
          </div>
        </div>
        <div className="
              col-12 col-sm-6 col-md-4
              d-flex
              align-items-stretch
              flex-column
            ">
          <div className="card bg-light d-flex flex-fill">
            <div className="card-header text-muted border-bottom-0" />
            <div className="card-body pt-0">
              <div className="row">
                <div className="col-7">
                  <h2 className="lead"><b>Eastern</b></h2>
                  <ul className="ml-4 mb-0 fa-ul text-muted">
                    <li className="small">
                      <span className="fa-li"><i className="fas fa-lg fa-building" /></span>
                      Bus No:KL 59J 5496
                    </li>
                    <li className="small">
                      <span className="fa-li"><i className="fas fa-lg fa-phone" /></span>
                      Phone #: +91 92821 09133
                    </li>
                  </ul>
                </div>
                
                <div className="col-5 text-center">
                  <img src="../../dist/img/2.jpg" alt="user-avatar" className="img-circle img-fluid" />
                </div>
              </div>
            </div>
            <div className="card-footer">
              <div className="text-right">
                <a href="/" className="btn btn-sm btn-primary">
                <i class="fas fa-route"></i> View route
                </a>
              </div>
            </div>
          </div>
        </div>



        <div className="
              col-12 col-sm-6 col-md-4
              d-flex
              align-items-stretch
              flex-column
            ">
          <div className="card bg-light d-flex flex-fill">
            <div className="card-header text-muted border-bottom-0" />
            <div className="card-body pt-0">
              <div className="row">
                <div className="col-7">
                  <h2 className="lead"><b>Abc</b></h2>
                  <ul className="ml-4 mb-0 fa-ul text-muted">
                    <li className="small">
                      <span className="fa-li"><i className="fas fa-lg fa-building" /></span>
                      Bus No: KL 40J 4040
                    </li>
                    <li className="small">
                      <span className="fa-li"><i className="fas fa-lg fa-phone" /></span>
                      Phone #: + 91 9846623990
                    </li>
                  </ul>
                </div>
                <div className="col-5 text-center">
                  <img src="../../dist/img/1.jpg" alt="user-avatar" className="img-circle img-fluid" />
                </div>
              </div>
            </div>
            <div className="card-footer">
              <div className="text-right">
                <a href="/" className="btn btn-sm btn-primary">
                <i class="fas fa-route"></i> View route
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<Link to={"/bus_form"}>
<div className="col-auto add">
            <button type="submit" class="btn btn-primary mb-3">Add</button>
             </div>
</Link>

      </div>
        

    );
}

export default Alt;