export class Client {
  constructor(
    public id: number,
    public firstName: string,
    public lastName: string,
    public address: string,
    public address2: string,
    public city: string,
    public state: string,
    public zip: string,
    public email: string,
    public password: string,
    public retypePassword: string) {
  }
}
