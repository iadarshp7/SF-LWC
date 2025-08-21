import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    name = 'Adarsh Pal'
    firstName = ''
    lastName = ''
    handleChange(event) {
        if (event.target.name === 'firstName') { this.firstName = event.target.value }
        if (event.target.name === 'lastName') { this.lastName = event.target.value }
    }
    get fullName() {
        return `${this.firstName} ${this.lastName}`
    }
}   