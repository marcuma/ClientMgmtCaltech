import { Component } from '@angular/core';
import { CommonModule} from '@angular/common';
import { FormsModule } from '@angular/forms';

import { Meeting } from '../model/meeting';
import { Client } from '../model/client';

@Component({
  selector: 'app-meeting-add-form',
  imports: [CommonModule, FormsModule],
  templateUrl: './meeting-add-form.component.html',
  styleUrl: './meeting-add-form.component.scss'
})
export class MeetingAddFormComponent {

  private id: number = 0;
  public clients: string[] = ["Mark Anthony", "Slim Shady", "Elon Musk"];


  meeting: Meeting = new Meeting(++this.id, '', 0, '', '');

  public onSubmit() {
    console.log(`Added a meeting for ${this.meeting.client} regarding ${this.meeting.topic}`);
  }
}
