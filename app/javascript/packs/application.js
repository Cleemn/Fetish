import "bootstrap";

import { flatPickr } from '../plugins/flatpickr';
import { initActionCable } from '../plugins/init_action_cable';

flatPickr();
initActionCable();

global.$ = $
