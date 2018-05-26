 function attachedTabsListener() {
  const buttons = document.querySelectorAll('.button-js');
  buttons.forEach( button => {
    button.addEventListener('click', () => {
      // console.log('clicked!!!')
      let id = button.getAttribute('id');
      // id = 'booking'

      let idElementOne = `${id}-content-js`;
      // idElementOne = 'booking-content-js'
      let contentOne = document.getElementById(idElementOne);
      if (idElementOne == null) { return };

      contentOne.hidden = false;

      let idElementTwo = "";
      if (id === 'booking') {
        idElementTwo = 'flat-content-js';
      } else {
        idElementTwo = 'booking-content-js';
      }
      let contentTwo = document.getElementById(idElementTwo);
      contentTwo.hidden = true;
    })
  });
}

export { attachedTabsListener };
