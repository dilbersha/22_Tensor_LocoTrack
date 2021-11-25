import React from "react";
import {Link} from "react-router-dom";
const Side =()=>{
    return(
      <div>
  <nav className="main-header navbar navbar-expand navbar-white navbar-light">
      {/* Left navbar links */}
      <ul className="navbar-nav">
        <li className="nav-item">
          <a className="nav-link" data-widget="pushmenu" href="/" role="button"><i className="fas fa-bars" /></a>
        </li>
      </ul>
      {/* Right navbar links */}
      <ul className="navbar-nav ml-auto">
        {/* Navbar Search */}
        
        {/* Messages Dropdown Menu */}
        </ul>
    </nav>
    {/* /.navbar */}
    {/* Main Sidebar Container */}
    <aside className="main-sidebar sidebar-dark-primary elevation-4">
      {/* Brand Logo */}
      {/* Sidebar */}
      <div className="sidebar">
        {/* Sidebar user panel (optional) */}
        <div className="user-panel mt-3 pb-3 mb-3 d-flex">
          <div className="image">
          <i class="fa fa-bus" style={{color:"grey"}}></i>
          </div>
          <div className="info">
            <a href="/" className="d-block">Bus app</a>
          </div>
        </div>
        {/* SidebarSearch Form */}
        <div className="form-inline">
          <div className="input-group" data-widget="sidebar-search">
            <input className="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search" />
            <div className="input-group-append">
              <button className="btn btn-sidebar">
                <i className="fas fa-search fa-fw" />
              </button>
            </div>
          </div>
        </div>
        {/* Sidebar Menu */}
        <nav className="mt-2">
          <ul className="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            {/* Add icons to the links using the .nav-icon class
         with font-awesome or any other icon font library */}
         <Link to={"/home"}>
         <li className="nav-item">
              <a href="./index.html" className="nav-link active">
                <i className="far fa-circle nav-icon" />
                <p>Dashboard</p>
              </a>
            </li>
            </Link>
            <Link to={"/bus_info"}>
            <li className="nav-item">
              <a href="pages/examples/bus.html" className="nav-link">
                <i className="far fa-circle nav-icon" />
                <p>Bus</p>
              </a>
            </li>
            </Link>
           
           <Link to={"/bus_station"}>
           <li className="nav-item">
              <a href="pages/tables/busstation.html" className="nav-link">
                <i className="far fa-circle nav-icon" />
                <p>Bus station</p>
              </a>
            </li>
           </Link>
            
            
          </ul></nav>
        {/* /.sidebar-menu */}
      </div>
      {/* /.sidebar */}
    </aside></div>


    );
}
export default Side;