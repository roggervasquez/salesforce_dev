import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Universe ss';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}