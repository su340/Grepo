function subscribe(){
  const subElm = document.querySelector('.js-subscribe')
    if(subElm.innerHTML === 'Subscribe'){
      subElm.innerHTML = 'Subscribed';
      subElm.classList.add('is-subscribed');
    }
    else{
      subElm.innerHTML = 'Subscribe';
      subElm.classList.remove('is-subscribed');
    }
  }

 