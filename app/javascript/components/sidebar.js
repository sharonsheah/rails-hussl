const nav = () => {
  const openButton = document.querySelector("#main");
  if (openButton) {
    const openNav = () => {
      document.getElementById("mySidebar").style.width = "250px";
      document.getElementById("main").style.marginLeft = "250px";
    }
    openButton.addEventListener("click", openNav);
  
    const closeNav = () => {
      document.getElementById("mySidebar").style.width = "0";
      document.getElementById("main").style.marginLeft = "0";
    }
    const closeButton = document.querySelector(".closebtn");
    closeButton.addEventListener("click", closeNav);
  }
}

export { nav };
