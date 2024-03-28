import { Controller } from "@hotwired/stimulus"
// core version + navigation, pagination modules:
import Swiper from 'swiper';
import { Navigation, Pagination } from 'swiper/modules';
// import Swiper and modules styles


// Connects to data-controller="swiper"
export default class extends Controller {
  static targets = [ "card", "modal", "modalButton" ]

  connect() {
  }

  swipeRight(event) {
    event.preventDefault();
    const form = event.currentTarget;
    fetch(form.action, {
      method: 'POST',
      headers: {
        'Accept': 'application/json'
      },
      body: new FormData(form)
    })
    .then(response => response.json())
    .then((data) => {
      this.modalTarget.innerHTML = data.match_card;
      this.modalButtonTarget.click();
      this.nextCard();
    })
  }

  swipeLeft() {
    this.nextCard()
  }

  nextCard() {
    const currentCard = this.cardTargets.find(card => Array.from(card.classList).includes("currentCard") );
    const currentCardIndex = this.cardTargets.findIndex(card => card == currentCard);

    const nextCard = this.cardTargets[currentCardIndex + 1];

    if (nextCard) {
      nextCard.classList.add("currentCard")
      nextCard.classList.remove("d-none")

      currentCard.classList.remove("currentCard")
      currentCard.classList.add("d-none")
    } else {
      currentCard.innerHTML = "<h3>You have no more matches</h3>"
    }
  }
}




// SWIPPER LOGIC

// connect() {
// // init Swiper:
//   this.csfrToken = document.querySelector('meta[name="csrf-token"]').getAttribute("content")
//   this.swiper = new Swiper(this.element, {
//     // configure Swiper to use modules
//     modules: [Navigation, Pagination],
//     direction: 'horizontal',
//     loop: true,
//   });
//   this.swiper.on('slideNextTransitionStart', () => {
//     // Get the profile ID of the current slide
//     const currentSlide = this.swiper.slides[this.swiper.activeIndex];
//     const profileId = currentSlide.dataset.profileId;

//     // AJAX request to create a match when swiping right
//     this.createMatch(profileId);
//   });
// }
// createMatch(profileId) {
//   const form = this.formTargets.find((form) => {
//     return form.dataset.formId == profileId
//   })
//   fetch(form.action, {
//     method: 'POST',
//     headers: {
//       'Accept': 'application/json',
//       'X-CSRF-Token': this.csfrToken,
//     },
//     body: new FormData(form)
//   })
//   .then(response => {
//     if (!response.ok) {
//       throw new Error('Failed to create match');
//     }
//     return response.json();
//   })
//   .then(data => {
//     // this.formTarget.InnerHTML = data.form // Handle response as needed
//   })
//   .catch(error => console.error('Error:', error));
// }
