document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const favPlaceForm = document.getElementsByClassName("favorite-submit")
  const sfPlaces = document.getElementById("sf-places")
  document.addEventListener("submit", (e) => {
    e.preventDefault();
    let place = document.createElement("li").textContent = e.target
    sfPlaces.append(place)
    
  })


  // adding new photos

  // --- your code here!



});
