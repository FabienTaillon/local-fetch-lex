import { LightningElement } from 'lwc';

export default class FetchData extends LightningElement {

    userList;

    connectedCallback() {

        const endpoint = 'https://jsonplaceholder.typicode.com/users/';
        fetch(endpoint).then(response => response.json()).then(data => {
            console.log(data);
            this.userList = data;
        });
    }
}