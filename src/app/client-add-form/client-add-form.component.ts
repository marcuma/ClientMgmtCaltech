import { Component } from '@angular/core';
import {CommonModule} from '@angular/common';
import {FormsModule} from '@angular/forms';
import {Client} from '../model/client';

@Component({
  selector: 'app-client-add-form',
  imports: [CommonModule, FormsModule],
  templateUrl: './client-add-form.component.html',
  styleUrl: './client-add-form.component.scss'
})
export class ClientAddFormComponent {

  id: number = 0;

  client: Client = new Client(++this.id,'','','','','','','','','','');
  public addClient() {
    console.log('Client added');
  }
}
