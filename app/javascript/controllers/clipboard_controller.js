import {Controller} from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"
import {checkIcon, clipboardIcon} from "../utils/icons";

class ClipboardController extends Controller {

    async copy({params: {content}}) {
        try {
            await navigator.clipboard.writeText(content)
            this.element.innerHTML = checkIcon
            setTimeout(() => {
                this.element.innerHTML = clipboardIcon
            }, 1000)
        } catch (e) {
            console.error('could not copy clipboard')
        }

    }
}

export default ClipboardController
