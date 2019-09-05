import Sortable from 'sortablejs';

const initSortable = () => {
  const el = document.getElementById('swipe');
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
        document.getElementById('button').click();
        // window.location = `/users/${el.dataset.userId}/accept`;
      } else {
        window.location = `/users/${el.dataset.userId}/decline`;
      }
    }
  });
};

export { initSortable };
