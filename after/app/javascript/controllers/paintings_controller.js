import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["painting"]

  initialize() {
    this.showPainting(0)
  }

  next() {
    this.showPainting(this.index + 1)
  }

  previous() {
    this.showPainting(this.index - 1)
  }

  showPainting(index) {
    this.index = index
    this.paintingTargets.forEach((el, i) => {
      el.classList.toggle("painting--current", index == i)
    })
  }

  get size() {
    this.paintingTargets.length
  }
}
