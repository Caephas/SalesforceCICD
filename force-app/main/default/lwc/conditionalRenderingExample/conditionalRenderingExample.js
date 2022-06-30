import { LightningElement, track } from 'lwc';

export default class ConditionalRenderingExample extends LightningElement {
    @track displayDiv = false

    @track cityList = ['ifite', 'awka', 'owerri', 'abia', 'congo']

    

    showDivHandler(event){
       this.displayDiv = event.target.checked
    }
}