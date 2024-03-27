import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="artists"
export default class extends Controller {
  static targets = ["selectedArtistsCard", "searchCard"]

  toggleSearchCard() {
    this.selectedArtistsCardTarget.classList.add('d-none');
    this.searchCardTarget.classList.remove('d-none');
  }

  toggleSelectedArtistsCard() {
    this.selectedArtistsCardTarget.classList.remove('d-none');
    this.searchCardTarget.classList.add('d-none');
  }
}
