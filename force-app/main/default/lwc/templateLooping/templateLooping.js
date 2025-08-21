import { LightningElement } from 'lwc';
import getProductUrl from '@salesforce/apex/FilesController.getProductImages';


export default class TemplateLooping extends LightningElement {
    productUrl = []
    connectedCallback() {
        getProductUrl()
            .then(result => {
                this.productUrl = result;
            })
            .catch(error => {
                console.error('Error::::', error);
            })
    }
}
