import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('RelayUI Toggle initialized');
    const firstOption = this.element.querySelector('[data-action="click->toggle#switch"]')
    if (firstOption) {
      firstOption.classList.add('bg-white', 'text-zinc-700')
    }
  }

  switch(event) {
    const options = this.element.querySelectorAll('[data-action="click->toggle#switch"]')
    options.forEach(option => {
      option.classList.remove('bg-white', 'text-zinc-700')
    })
    event.currentTarget.classList.add('bg-white', 'text-zinc-700')
  }
}
