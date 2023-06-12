const sections  = document.querySelectorAll('section');
document.addEventListener('DOMContentLoaded', () => {
    let scrollCounter = 0;
    setTimeout(() => {sections[0].style.marginTop = '250px';}, 500)
    window.addEventListener('scroll', () => {
        setTimeout(()=> {
            scrollCounter++;
            sections[scrollCounter].style.marginTop = '250px';
        }, 500);
    })
});