// JavaScript Document
function validateForm()
{
var listBoxSelection=document.forms["state"]["country"].value;
if(listBoxSelection==0)
  {
  alert("Please select a country");
  return false;
  }
}


function validateForm1()
{
var listBoxSelection=document.forms["city"]["country"].value;
if(listBoxSelection==0)
  {
  alert("Please select a Country");
  return false;
  }

var listBoxSelection1=document.forms["city"]["state"].value;
if(listBoxSelection1==0)
  {
  alert("Please select a state");
  return false;
  }


}


function validateForm2()
{
var listBoxSelection=document.forms["area"]["country"].value;
if(listBoxSelection==0)
  {
  alert("Please select a Country");
  return false;
  }

var listBoxSelection1=document.forms["area"]["state"].value;
if(listBoxSelection1==0)
  {
  alert("Please select a state");
  return false;
  }

var listBoxSelection2=document.forms["area"]["city"].value;
if(listBoxSelection2==0)
  {
  alert("Please select a city");
  return false;
  }


}