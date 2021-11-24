import View from './View.js'
const tag = '[main]'

const MainView = Object.create(View);

MainView.setup = function (el) {
    this.init(el)
    if(document.querySelectorAll("#header").length){
        this.header = document.querySelector("#header");
        this.navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
        this.bindEvents()
    }

    return this
}

MainView.bindEvents = function () {
    this.onNavScroll(this.header);
    //navbar Burgers
    if (this.navbarBurgers.length > 0) {
        this.navbarBurgers.forEach( element => this.onNavToggle(element));
    }
}

MainView.onNavScroll = function(element){
    let last_known_scroll_position = 0;
    let ticking = false;
    let header = this.header;
    window.addEventListener('scroll', function() {
        last_known_scroll_position = window.scrollY;
        if (!ticking) {
            window.requestAnimationFrame(function() {
                if(last_known_scroll_position != 0){
                    header.classList.add("scroll");
                }else{
                    header.classList.remove("scroll");
                }
                ticking = false;
            });
        }
        ticking = true;
    });
}

MainView.onNavToggle = function(element){
    element.addEventListener('click', () => {
        const target = element.dataset.target;
        const $target = document.getElementById(target);

        element.classList.toggle('is-active');
        $target.classList.toggle('is-active');
    });
}

export default MainView