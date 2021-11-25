import React from "react";
import Side from "../components/sidebar";
const Station =()=>{
    return(
        <div>
        <Side/>
  <div className="content-wrapper">
    {/* Content Header (Page header) */}
    <section className="content-header">
      <div className="container-fluid">
        <div className="row mb-2">
          <div className="col-sm-6">
            <h1>Bus Stations</h1>
          </div>
          <div className="col-sm-6">
            <ol className="breadcrumb float-sm-right">
              
              <li className="breadcrumb-item active" />
            </ol>
          </div>
        </div>
      </div>{/* /.container-fluid */}
    </section>
    {/* Main content */}
    <section className="content">
      <div className="container-fluid">
        <div className="row">
          <div className="col-md-6">
            <div className="card">
              <div className="card-header">
              </div>
              {/* /.card-header */}
              <div className="card-body">
                <table className="table table-bordered">
                  <thead>
                    <tr>
                      <th style={{width: 10}}>District</th>
                      <th>Co-ordinates</th>
                      <th>Pincode</th>
                      <th style={{width: 40}}>Is Main Station</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Trivandrum</td>
                      <td>30N 86E</td>
                      <td> 695241
                      </td>
                      <td>Yes</td>
                    </tr>
                    <tr>
                      <td>Kollam</td>
                      <td>15N 67W</td>
                      <td>670021
                      </td>
                      <td>Yes</td>
                    </tr>
                    <tr>
                      <td>Karicode</td>
                      <td>16N 32W</td>
                      <td>679212
                      </td>
                      <td>No</td>
                    </tr>
                  </tbody>
                </table>
                <div className="row"> <h5><i class="fas fa-caret-down"></i></h5><p> view more</p></div>
               
              </div>
            </div>
          </div>
        </div></div></section>
    </div></div>

    );
}

export default Station;