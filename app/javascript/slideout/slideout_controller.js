// See https://code.avi.nyc/turbo-frame-slide-over

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["slideout"];
  startClass = "translate-x-full";
  endClass = "-translate-x-0";

  connect() {
    console.log("Slideout Connected!");
    this.slideoutTarget.classList.add(this.startClass);
    setTimeout(() => {
      document.body.classList.add("overflow-y-hidden")
      this.slideoutTarget.classList.remove(this.startClass);
      this.slideoutTarget.classList.add(
        "ease-in-out",
        "duration-100",
        this.endClass
      );
    });
  }

  hide() {
    this.slideoutTarget.classList.remove(this.endClass);
    this.slideoutTarget.classList.add(
      "ease-in-out",
      "duration-100",
      this.startClass
    );
    document.body.classList.remove("overflow-y-hidden")
  }
}
