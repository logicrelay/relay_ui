import ToggleController from './controllers/toggle_controller'
import { Application } from '@hotwired/stimulus'

const application = Application.start();
application.register("toggle", ToggleController);