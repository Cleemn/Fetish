import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"
import "flatpickr/dist/themes/confetti.css"

const flatPickr = () => {
  new flatpickr('.date', {dateFormat: "d.m.Y", minDate: "01.01.1960", maxDate: "28.08.2001"});
}

export { flatPickr };
