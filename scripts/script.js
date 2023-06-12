const sections  = document.querySelectorAll('section');
const html = document.querySelector('html');
const header = document.querySelector('header')
document.addEventListener('DOMContentLoaded', () => {
    let scrollCounter = 0;
    setTimeout(() => {sections[0].style.marginTop = '250px';}, 500)
    window.addEventListener('scroll', () => {
        scrollCounter++;
        if (scrollCounter > 40)
        {
            sections[1].style.marginTop = '250px';
        }
        if (scrollCounter > 80)
        {
            sections[2].style.marginTop = '250px';
            sections[2].style.marginTop = '250px';
        }
    })

    header.addEventListener('mouseover', () => {
        html.style.backgroundColor = '#FFFFFF';
    });
    sections[0].addEventListener('mouseover', ()=> {
        html.style.backgroundColor = '#212738';
    });
    sections[1].addEventListener('mouseover', ()=> {
        html.style.backgroundColor = '#57C4E5';
    });
    sections[2].addEventListener('mouseover', ()=> {
        html.style.backgroundColor = '#F97068';
    });

});