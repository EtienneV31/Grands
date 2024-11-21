import { Controller } from "@hotwired/stimulus"
// Import flatpickr function
import flatpickr from "flatpickr"
// The range plugin is also needed in order to use two inputs
import rangePlugin from "flatpickrRangePlugin";

export default class extends Controller {

  // retrieve the targets from the DOM
  static targets = ['startDateInput', 'endDateInput']
  // On controller's connection, call the flatpickr
  // function in order to build the calendars
  connect() {
      flatpickr(this.startDateInputTarget, {
      "minDate": "today",
      "plugins": [new rangePlugin({ input: this.endDateInputTarget })]
    })
  }
}
