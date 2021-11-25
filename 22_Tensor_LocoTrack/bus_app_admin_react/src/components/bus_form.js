import React from "react";
import {Link} from "react-router-dom";
import "../components/addbus.css";
//import Side from "../components/sidebar";
class Form extends React.Component {
    state={
        name:"",
        bnum:"",
        pnum:""
    };
    add=(e)=>{
        e.preventDefault();
        if(this.state.name==="" && this.state.email===""){
            alert("All the fields are mandatory!");
            return;
        } 
    console.log(this.state);
    this.props.dataHandler(this.state);
    this.setState({name:"",bnum:"",pnum:""});
       };
      
    
    //this.props.addContactHandler(this.state);
    //this.setState({name:"",bnum:"",pnum:""});
    //this.props.history.push("/");
       //};
    render(){
        return(
          <div>
            
            <div className="container form">
            <h2>Add Bus Info</h2>
            <div className="py-4">
            <form onSubmit={this.add}>
            <div class="mb-3 row">
           <label for="staticEmail" class="col-sm-2 col-form-label">Name:</label>
           <div class="col-sm-10">
           <input type="text" name="name" 
           value={this.state.name}
           onChange={(e)=>{
               this.setState({name:e.target.value})
           }} placeholder="name"/>
           </div>
           </div>
           <div class="mb-3 row">
           <label class="col-sm-2 col-form-label">Bus_no:</label>
           <div class="col-sm-10">
           <input type="number" name="bnum"  
           value={this.state.bnum}
           onChange={(e)=>{
               this.setState({bnum:e.target.value})
           }}placeholder="bnum"/>
           </div>
           </div>
           <div class="mb-3 row">
           <label class="col-sm-2 col-form-label">Phone_no:</label>
           <div class="col-sm-10">
           <input type="number" name="pnum" 
           value={this.state.pnum}
           onChange={(e)=>{
               this.setState({pnum:e.target.value})
           }}placeholder="pnum"/>
           </div>
           </div>
           <Link to={"/alt"}>
           <div class="col-auto">
           <button type="submit" class="btn btn-primary mb-3">Add</button>
            </div>
           </Link>
           
           </form>
            </div>
           </div>
          </div>
          

   );
}
   }
export default Form;

