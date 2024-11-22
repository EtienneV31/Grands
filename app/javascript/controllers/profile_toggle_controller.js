import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "image", "info"]

  connect() {
    // Cache le profil au chargement
    this.contentTarget.classList.add("hidden")
  }

  toggle() {
    // Bascule entre affiché/caché
    this.contentTarget.classList.toggle("hidden")
  }

  toggleScale() {
    this.imageTarget.classList.toggle('active')
    this.infoTarget.classList.toggle('reduced')
  }
}
