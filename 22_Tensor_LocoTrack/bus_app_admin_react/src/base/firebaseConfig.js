// Import the functions you need from the SDKs you need
import firebase from "firebase/app";
import "firebase/firestore";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: "AIzaSyCYO-oYuQQDY7NP0BwYYXIWrYBb-pluZkE",
    authDomain: "tensor-f516b.firebaseapp.com",
    projectId: "tensor-f516b",
    storageBucket: "tensor-f516b.appspot.com",
    messagingSenderId: "369910449792",
    appId: "1:369910449792:web:89396bde47a03ae4aa0865",
    measurementId: "G-6QVFLCXB76"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);
firebase
    .firestore()
    .enablePersistence()
    .catch((err) => {
        if (err.code == "failed-precondition") {
            // console.log("failed-precondition");
            // ...
        } else if (err.code == "unimplemented") {
            // The current browser does not support all of the
            // features required to enable persistence
            // ...
        }
    });
export const fire = firebase;
export const firestore = firebase.firestore();
export const FieldValue = firebase.firestore.FieldValue;
