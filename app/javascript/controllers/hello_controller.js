import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["confirm", "cancel", "text", "color"]
  connect() {
    // this.element.textContent = "Hello World!"
    console.log("Hello from hello controller")
  }
  confirm (event) {
    console.log(event)
    // this.confirmTarget.setAttribute("disabled", "")
    // this.cancelTarget.setAttribute("disabled", "")
    this.textTarget.textContent = "BOOKING CONFIRMED"
    this.colorTarget.classList.add("bg-success")
    this.confirmTarget.classList.add("d-none")
    this.cancelTarget.classList.add("d-none")
  }
  cancel (event) {
    console.log(event)
    this.textTarget.textContent = "BOOKING CANCELLED"
    this.colorTarget.classList.add("bg-danger")
    this.confirmTarget.classList.add("d-none")
    this.cancelTarget.classList.add("d-none")
  }
}
