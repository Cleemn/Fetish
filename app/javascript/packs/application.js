import "bootstrap";

import { flatPickr } from '../plugins/flatpickr';
import { initSortable } from '../plugins/init_sortable';
import { initActionCable } from '../plugins/init_action_cable';
import { sendMessageAutomatically } from '../plugins/listener';
import { dashboard_animation } from '../components/dashboard';
import { uploadBtn } from '../components/messenger';
import { sendBtn } from '../components/messenger';
import { scrollToBottom } from '../components/messenger';
import { choices } from '../components/fetish_choice';



flatPickr();
initActionCable();
choices();

global.$ = $

sendMessageAutomatically();
global.sendMessageAutomatically = sendMessageAutomatically;

// document.addEventListener("keyup", () => {
//   sendMessageAutomatically();
// });

dashboard_animation();
initSortable();
uploadBtn();
sendBtn();
scrollToBottom();

window.scrollToBottom = scrollToBottom;
