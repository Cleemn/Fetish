import "bootstrap";

import { flatPickr } from '../plugins/flatpickr';
import { initActionCable } from '../plugins/init_action_cable';
import { sendMessageAutomatically } from '../plugins/listener';
import { dashboard_animation } from '../components/dashboard';
import { uploadBtn } from '../components/messenger';
import { sendBtn } from '../components/messenger';
import { scrollToBottom } from '../components/messenger';


flatPickr();
initActionCable();

global.$ = $

sendMessageAutomatically();
global.sendMessageAutomatically = sendMessageAutomatically;

// document.addEventListener("keyup", () => {
//   sendMessageAutomatically();
// });

dashboard_animation();
uploadBtn();
sendBtn();
scrollToBottom();
