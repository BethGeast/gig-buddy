# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "tom-select" # @2.3.1
pin "@rails/actioncable", to: "@rails--actioncable.js" # @7.1.3
pin "swiper", to: "https://ga.jspm.io/npm:swiper@11.0.7/swiper.mjs"
pin "swiper/modules", to: "https://ga.jspm.io/npm:swiper@11.0.7/modules/index.mjs"
