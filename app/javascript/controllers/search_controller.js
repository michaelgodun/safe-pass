import {Controller} from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"

class SearchController extends Controller {
    static targets = ['clearButton']

    toggleClearButton(event) {
        if (event.target.value) {
            this.clearButtonTarget.classList.remove("d-none")
        } else {
            this.clearButtonTarget.classList.add("d-none")
        }
    }
}

export default SearchController
