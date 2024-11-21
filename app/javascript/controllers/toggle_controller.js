import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list", "map", "activities", "mapSection", "test"]

  connect() {
    this.showList()
  }

  showList() {
    console.log("showList")
    this.listTarget.classList.toggle("active")
    this.mapTarget.classList.toggle("active")
    this.activitiesTarget.classList.remove("hidden")
    this.mapSectionTarget.classList.add("hidden")
  }

  showMap() {
    console.log("showMap")
    this.mapTarget.classList.add("active")
    this.listTarget.classList.remove("active")
    this.mapSectionTarget.classList.remove("hidden")
    this.activitiesTarget.classList.add("hidden")
  }
}
