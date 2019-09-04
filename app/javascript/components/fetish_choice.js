
const choices = () => {

const fetish = document.querySelectorAll('.fetish-choice');
// console.log(fetish)

const toggleActiveClass = (event) => {
  // console.log(event.currentTarget)
  event.currentTarget.classList.toggle('active');
};

const toggleActiveOnClick = (fetish) => {
  fetish.addEventListener('click', toggleActiveClass);
};

fetish.forEach(toggleActiveOnClick);
};

export { choices };
