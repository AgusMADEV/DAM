document.addEventListener('DOMContentLoaded', function() {
    let slides = document.querySelectorAll('.slide');
    let currentSlide = 0;

    function showSlide(index) {
        slides[currentSlide].style.display = 'none';
        currentSlide = (index + slides.length) % slides.length;
        slides[currentSlide].style.display = 'block';
    }

    setInterval(() => {
        showSlide(currentSlide + 1);
    }, 3000);
    
    showSlide(currentSlide);
});
