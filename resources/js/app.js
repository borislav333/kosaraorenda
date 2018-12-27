
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

Vue.component('home', require('./components/Home.vue'));
import Es6Promise from 'es6-promise'
Es6Promise.polyfill()
let VueScrollTo = require('vue-scrollto');

Vue.use(VueScrollTo)

// const files = require.context('./', true, /\.vue$/i)

// files.keys().map(key => {
//     return Vue.component(_.last(key.split('/')).split('.')[0], files(key))
// })

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
import 'es6-promise/auto'
import router from '../js/router/router.js'
import Vue from 'vue';
import store from './store/store.js'
// es modules
import Editor from '@tinymce/tinymce-vue';
import md from 'marked'
window.md=md;
// commonjs require
Vue.use(Editor);
Vue.component('pagination', require('laravel-vue-pagination'));

const app = new Vue({
    el: '#app',
    router,
    store
});
