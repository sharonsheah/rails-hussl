const collapseList = () => {
    const verticalNavbar = document.querySelector(".vertical-navbar");
    if (verticalNavbar) {
        const collapseIdeateList = document.querySelector(".collapse-ideate-list");
        const collapseLeaderboardList = document.querySelector(".collapse-leaderboard-list");
        const ideateList = document.querySelector(".ideate-list");
        const leaderList = document.querySelector(".leaderboard-list");
        
        collapseIdeateList.addEventListener('click', () => {
            ideateList.classList.toggle('hidden');
        })

        collapseLeaderboardList.addEventListener('click', () => {
            leaderList.classList.toggle('hidden');
        })
    }
  }
  
export { collapseList };