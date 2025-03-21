import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar", "curtain"]

  toggle() {
    document.body.classList.toggle("overflow-hidden");
    this.sidebarTarget.classList.toggle("hidden");
    this.sidebarTarget.classList.toggle("flex");
    this.curtainTarget.classList.toggle("hidden");
  }
}