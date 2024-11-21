// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("DOMContentLoaded", function () {
  const modal = document.getElementById("bookingModal");
  const openBtn = document.getElementById("openModal");
  const closeBtn = document.querySelector(".close");

  // Ouvrir la modale
  openBtn.addEventListener("click", function () {
    modal.style.display = "block";
  });

  // Fermer la modale
  closeBtn.addEventListener("click", function () {
    modal.style.display = "none";
  });

  // Fermer la modale en cliquant à l'extérieur
  window.addEventListener("click", function (event) {
    if (event.target === modal) {
      modal.style.display = "none";
    }
  });
});
