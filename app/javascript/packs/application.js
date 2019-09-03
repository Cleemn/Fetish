import "bootstrap";

import { flatPickr } from '../plugins/flatpickr';
import { initActionCable } from '../plugins/init_action_cable';
import { sendMessageAutomatically } from '../plugins/listener';
import { dashboard_animation } from '../components/dashboard';

flatPickr();
initActionCable();

global.$ = $

sendMessageAutomatically();
global.sendMessageAutomatically = sendMessageAutomatically;

// document.addEventListener("keyup", () => {
//   sendMessageAutomatically();
// });

dashboard_animation();
