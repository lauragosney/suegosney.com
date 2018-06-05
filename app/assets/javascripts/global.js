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

          inView('.fade')
            .on('enter', img => {
            img.classList.add('visible')
            })
            .on('exit', section => {
                img.classList.remove('visible')
            })
            inView.threshold(0.2)

        })

        $("form.newsletter").on("ajax:success", function (ev, data, status, xhr) {
          $(this).html(event.detail[0])
        }).on("ajax:error", function (e, xhr, status, error) {
          alert("Please complete all required fields")
        })
  })
