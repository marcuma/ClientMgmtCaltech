import {Client} from './client';

export class Meeting {
  constructor(
    public id: number,
    public topic: string,
    public numberOfPeople: number,
    public client: string,
    public dateTime: string
  ) {}
}
