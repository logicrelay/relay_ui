import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar"]

  connect() {
    console.log("Navigation Connected!");
  }

  toggle() {
    this.sidebarTarget.classList.toggle("rui:hidden");
  }
}