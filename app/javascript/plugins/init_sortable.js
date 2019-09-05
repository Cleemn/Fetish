import Sortable from 'sortablejs';

const initSortable = () => {
  const el = document.getElementById('swipe');
  if (el) {
    const sortable = Sortable.create(el, {
      onEnd: (event) => {
        const test = document.getElementById('test-js');
        const option = {
          headers: {
            'Accept': 'text/javascript',
            'Content-Type': 'text/javascript'
          }
        }
        if (event.newIndex > event.oldIndex) {
          console.log("droite")
          document.getElementById('accept-button').click();
          // window.location = `/users/${el.dataset.userId}/accept`;
        } else {
          console.log("gquche")
          window.location = `/users/${el.dataset.userId}/decline`;
        }
      }
    });
  }
};

export { initSortable };
