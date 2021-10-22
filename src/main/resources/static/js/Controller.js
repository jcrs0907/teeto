import mainView from './MainView.js'


const tag = '[controller]'

export default {
    init() {
        mainView.setup(document.querySelector('#header'))
    }
}