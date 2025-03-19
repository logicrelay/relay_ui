import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar", "curtain"]

  toggle() {
    this.sidebarTarget.classList.toggle("hidden");
    this.sidebarTarget.classList.toggle("flex");
    this.curtainTarget.classList.toggle("hidden");
    document.body.classList.add("overflow-hidden");
  }
}