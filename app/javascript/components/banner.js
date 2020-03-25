const bannerCarousel = () => {
  let slideIndex = 0;
  const bannerContent = document.querySelectorAll(".banner-content");

  if (bannerContent.length > 0) {
    const changeBanner = () => {
      if (slideIndex >= bannerContent.length) {slideIndex = 0}
      if (slideIndex < 0) {slideIndex = bannerContent.length} ;
      for (let i = 0; i < bannerContent.length; i++) {
        bannerContent[i].classList.add('hidden');
      }
      bannerContent[slideIndex].classList.remove('hidden');

      slideIndex ++
    }

    setInterval(function() {
      changeBanner()
    }, 4000);
  }
}

export { bannerCarousel };
