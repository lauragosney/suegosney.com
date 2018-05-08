document.addEventListener('DOMContentLoaded', () => {

      inView('section')
        .on('enter', section => {
        section.classList.add('in-viewport')
        })
        .on('exit', section => {
            section.classList.remove('in-viewport')
        })
        inView.threshold(0.2)


        const sections = document.querySelectorAll('section')

        sections.forEach((section, index) => {

          const fadeinLi = section.querySelectorAll('.fadein li')

          fadeinLi.forEach((fadeinLi, index) => {

            const delay = index * 300
            fadeinLi.style.transitionDelay = delay + 'ms'
          })

          const fadein = section.querySelectorAll('.fadein')

          fadein.forEach((fadein, index) => {

            const delay = index * 300
            fadein.style.transitionDelay = delay + 'ms'
          })

        })
  })
