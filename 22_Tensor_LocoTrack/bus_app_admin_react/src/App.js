import React from "react";
import './App.css';
import {BrowserRouter as Router, Routes, Route} from "react-router-dom";
import Login from "./components/log";
//import Side from "./components/sidebar";
import Alt from "./components/alt";
import Info from "./components/info";
import Pic from "./components/picture";
import Form from "./components/bus_form";
import Station from "./components/bus_station";
import Shift from "./components/shift";
function App() {
  return (
    <div class="hold-transition sidebar-mini layout-fixed">
    <Router>
    <Routes>
    <Route path="/" element={<Login/>}></Route>
    <Route path="/home" element={<Info/>}></Route>
    <Route path="/bus_info" element={<Pic/>}></Route>
    <Route path="/bus_form" element={<Form/>}></Route>
    <Route path="/bus_form" element={<Form/>}></Route>
    <Route path="/alt" element={<Alt/>}></Route>
    <Route path="/bus_station" element={<Station/>}></Route>
    <Route path="/shift" element={<Shift/>}></Route>
    </Routes>
    </Router>
    
    </div>
  );
}

export default App;
