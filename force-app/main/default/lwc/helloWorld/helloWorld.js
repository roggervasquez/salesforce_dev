import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Universe';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}