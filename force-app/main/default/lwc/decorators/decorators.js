import { LightningElement, track } from 'lwc';

export default class Decorators extends LightningElement {

    @track cityData = {
        name: 'Kanpur',
        state: 'UP'
    }
    handleCity(event) {
        console.log('input value::::::', event.target.value)
        console.log('object city name::::::', this.cityData.name)
        this.cityData.name = event.target.value;
    }
}