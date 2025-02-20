import { Routes } from '@angular/router';
import {HomeComponent} from './home/home.component';
import {ClientAddFormComponent} from './client-add-form/client-add-form.component';
import {MeetingAddFormComponent} from './meeting-add-form/meeting-add-form.component';


export const routes: Routes = [
  {
    path: '',
    component: HomeComponent,
    title: 'Home',
  },
  {
    path: 'addclient',
    component: ClientAddFormComponent,
    title: 'Client Add Form',
  },
  {
    path: 'addmeeting',
    component: MeetingAddFormComponent,
    title: 'Meeting Add Form',
  }
];
