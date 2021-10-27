import View from './View.js'
const tag = '[main]'
const MainView = Object.create(View);

MainView.setup = function (el) {
    this.init(el)
    this.header = el;
    this.navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
    window.addEventListener('scroll', this.headerScrollEvent());
    this.bindEvents()
    return this
}

MainView.bindEvents = function () {
    //navbar Burgers
    if (this.navbarBurgers.length > 0) {
        this.navbarBurgers.forEach( el => {
            el.addEventListener('click', () => {
                const target = el.dataset.target;
                const $target = document.getElementById(target);

                el.classList.toggle('is-active');
                $target.classList.toggle('is-active');
            });
        });
    }

    // //window scroll
    // let last_known_scroll_position = 0;
    // let ticking = false;
    //
    // function doSomething(scroll_pos) {
    //     // scroll 위치에 대한 작업을 하세요
    //
    // }
    //
    // window.addEventListener('scroll', function(e) {
    //
    // });
}

MainView.headerScrollEvent = function(last_known_scroll_position = 0, ticking = false){
    last_known_scroll_position = window.scrollY;

    if (!ticking) {
        window.requestAnimationFrame(function() {
            console.log("z")
            ticking = false;
        });


        ticking = true;
    }
}

export default MainView