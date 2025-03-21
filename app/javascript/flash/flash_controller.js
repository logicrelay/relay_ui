// app/javascript/controllers/flash_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    requestAnimationFrame(() => {
      this.element.classList.remove("opacity-0");
    });

    this.timeout = setTimeout(() => {
      this.fadeOutAndRemove();
    }, 5000);
  }

  close() {
    clearTimeout(this.timeout);
    this.fadeOutAndRemove();
  }

  fadeOutAndRemove() {
    this.element.classList.add("opacity-0");
    setTimeout(() => {
      this.element.remove();
    }, 100);
  }
}