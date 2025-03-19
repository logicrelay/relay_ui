import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar", "curtain"]

  connect() {
    console.log("Navigation Connected!");
  }

  toggle() {
    this.sidebarTarget.classList.toggle("hidden");
    this.sidebarTarget.classList.toggle("flex");
    this.curtainTarget.classList.toggle("hidden");
    // this.curtainTarget.classList.toggle("opacity-0");

    // if (this.curtainTarget.classList.contains("opacity-0")) {
    //   document.body.classList.remove("overflow-y-hidden");
    // } else {
    //   document.body.classList.add("overflow-y-hidden");
    // }
  }
}