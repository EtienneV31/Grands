import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="card-activities"
export default class extends Controller {
  connect() {
    this.element.addEventListener("click", this.redirectToActivity)
    this.element.addEventListener("mouseenter", this.applyBlur)
    this.element.addEventListener("mouseleave", this.removeBlur)
  }

  disconnect() {
    this.element.removeEventListener("click", this.redirectToActivity)
    this.element.removeEventListener("mouseenter", this.applyBlur)
    this.element.removeEventListener("mouseleave", this.removeBlur)
  }

  redirectToActivity(event) {
    const activityId = event.currentTarget.getAttribute("data-id")
    window.location.href = `/activities/${activityId}`
  }

  applyBlur(event) {
    const cards = document.querySelectorAll(".card-activities")
    cards.forEach(card => {
      if (card !== this.element) {
        card.classList.add("blur")
      }
    })
  }

  removeBlur(event) {
    const cards = document.querySelectorAll(".card-activities")
    cards.forEach(card => {
      card.classList.remove("blur")
    })
  }
}
