import View from './View.js'
const tag = '[main]'
const MainView = Object.create(View);

MainView.setup = function (el) {
    this.init(el)
    this.communityBtn = el.querySelector('[name=communityBtn]');
    this.userBtn = el.querySelector('[name=userBtn]');
    this.bindEvents()
    return this
}

MainView.bindEvents = function () {
    this.on('submit', e => e.preventDefault())
    this.communityBtn.addEventListener('click', e => this.onToggleMenu(e))
    this.communityBtn.addEventListener('keyup', e => this.onToggleMenu(e))
    this.userBtn.addEventListener('click', e => this.onToggleMenu(e))
    this.userBtn.addEventListener('keyup', e => this.onToggleMenu(e))
}

MainView.onToggleMenu = function (e) {
    let target = e.currentTarget;
    let menu = this.el.querySelector('[id='+e.currentTarget.dataset.menu+']');
    if(target.className === 'active'){
        target.className = ''
        this.showMenu(false, menu);

    }else{
        target.className = 'active'
        this.showMenu(true, menu);
    }

}


MainView.showMenu = function (show = true, el) {
    el.style.display = show ? 'block' : 'none'
}

export default MainView