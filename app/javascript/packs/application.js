import "bootstrap";

import { flatPickr } from '../plugins/flatpickr';
import { initActionCable } from '../plugins/init_action_cable';
import { sendMessageAutomatically } from '../plugins/listener';

flatPickr();
initActionCable();
sendMessageAutomatically();
global.sendMessageAutomatically = sendMessageAutomatically;

// document.addEventListener("keyup", () => {
//   sendMessageAutomatically();
// });
