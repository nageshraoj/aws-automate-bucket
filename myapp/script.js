const navItems = document.querySelectorAll('.nav-item')
const imageText = document.querySelector('.image-text')
const imagesDisplay = document.querySelectorAll('.image-display')
const btns = document.querySelectorAll('.btn')
const navbar = document.querySelector('.navbar')
const navbarToggle = document.querySelector('.navbar-toggle')
const mainImage = document.querySelector('.image-box')

btns.forEach((btn, index) => {
  btn.addEventListener('click', () => {
    if (index === 1) {
      btns[0].classList.add('active')
      btns[1].classList.remove('active')
      navbar.style.marginLeft = '-250px'
      navbarToggle.style.marginLeft = '10px'
      mainImage.style.marginLeft = '50px'
    } else {
      btns[1].classList.add('active')
      btns[0].classList.remove('active')
      navbar.style.marginLeft = '250px'
      navbarToggle.style.marginLeft = '250px'
      mainImage.style.marginLeft = '300px'
    }
  })
})

navItems.forEach((navItem) => {
  navItem.addEventListener('mouseover', () => {
    const navLink = navItem.querySelector('.nav-link')
    imageText.innerHTML = navLink.innerHTML

    imagesDisplay.forEach((imageDisplay) => {
      imageDisplay.classList.remove('active')
      if (navLink.innerHTML === imageDisplay.alt) {
        imageDisplay.classList.add('active')
      }
    })

    // switch (navLink.innerHTML) {
    //   case 'AirPod':
    //     imagesDisplay[0].classList.add('active')
    //     break
    //   case 'Alexa':
    //     imagesDisplay[1].classList.add('active')
    //     break
    //   case 'Camera':
    //     imagesDisplay[2].classList.add('active')
    //     break
    //   case 'Mouse':
    //     imagesDisplay[3].classList.add('active')
    //     break
    //   case 'Phone':
    //     imagesDisplay[4].classList.add('active')
    //     break
    //   case 'Playstation':
    //     imagesDisplay[5].classList.add('active')
    //     break
    //   default:
    //     break
    // }
  })
})
