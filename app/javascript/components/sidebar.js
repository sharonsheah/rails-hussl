// Set the width of the sidebar to 250px and the left margin of the page content to 250px
const nav = () => {
  const openNav = () => {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
  }
  const openButton = document.querySelector("#main");
  openButton.addEventListener("click", openNav);

  const closeNav = () => {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
  }
  const closeButton = document.querySelector(".closebtn");
  closeButton.addEventListener("click", closeNav);
  
  const myFunction = () => {
    var element = document.getElementById("myDIV");
    element.classList.add("mystyle");
  }
}


export { nav };
