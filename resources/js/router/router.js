import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter);

import AppHome from '../components/AppHome.vue'
import AppForUs from '../components/AppForUs.vue'
import AppContacts from '../components/AppContacts.vue'
import ShowEvent from '../components/Events/ShowEvent.vue'
import CreateEvent from '../components/Events/CreateEvent.vue'
import EditEvent from '../components/Events/EditEvent.vue'
import ShowAdvice from '../components/Advices/ShowAdvice.vue'
import EditAdvice from '../components/Advices/EditAdvice.vue'
import CreateAdvice from '../components/Advices/CreateAdvice.vue'
import ShowPost from '../components/templates/ShowPost.vue'
import ShowPostEvent from '../components/Events/ShowPostEvent.vue'
import ShowPostAdvice from '../components/Advices/ShowPostAdvice.vue'
import CreateTravelBg from '../components/TravelBulgaria/CreateTravelBg.vue'
import EditTravelBg from '../components/TravelBulgaria/EditTravelBg.vue'
import ShowPostTravelBg from '../components/TravelBulgaria/ShowPostTravelBg.vue'
import ShowTravelBg from '../components/TravelBulgaria/ShowTravelBg.vue'
import CreateTravelOut from '../components/TravelOutside/CreateTravelOut.vue'
import EditTravelOut from '../components/TravelOutside/EditTravelOut.vue'
import ShowPostTravelOut from '../components/TravelOutside/ShowPostTravelOut.vue'
import ShowTravelOut from '../components/TravelOutside/ShowTravelOut.vue'
import Login from '../components/Auth/Login.vue'

const router = new VueRouter({
    mode:'history',
    routes:[
        {
            path: '/',
            name: 'home',
            component:AppHome,

        },
        {
            path: '/forus',
            name: 'forus',
            component: AppForUs,

        },
        {
            path: '/contacts',
            name: 'contacts',
            component:AppContacts,

        },
        {
            path: '/events',
            component:ShowEvent,

        },
        {
            path: '/events/create',
            name: 'eventsCreate',
            component:CreateEvent,

        },
        {
            path: '/events/:show',
            name: 'eventsShow',
            component:EditEvent,

        },
        {
            path: '/advices',
            component:ShowAdvice,

        },
        {
            path: '/advices/create',
            name: 'advicesCreate',
            component:CreateAdvice,

        },
        {
            path: '/advices/:show',
            name: 'advicesShow',
            component:EditAdvice,

        },
        {
            path: '/events/post/:show',
            name: 'ShowPostEvent',
            component:ShowPostEvent,

        },
        {
            path: '/advices/post/:show',
            name: 'ShowPostAdvice',
            component:ShowPostAdvice,

        },
        /////////////////////////////////////////////////////////////////////


        {
            path: '/travelbg',
            component:ShowTravelBg,

        },
        {
            path: '/travelbg/create',
            component:CreateTravelBg,

        },
        {
            path: '/travelbg/:show',
            component:EditTravelBg,

        },
        {
            path: '/travelbg/post/:show',
            component:ShowPostTravelBg,

        },

        {
            path: '/travelout',
            component:ShowTravelOut,

        },
        {
            path: '/travelout/create',
            component:CreateTravelOut,

        },
        {
            path: '/travelout/:show',
            component:EditTravelOut,

        },
        {
            path: '/travelout/post/:show',
            component:ShowPostTravelOut,

        },
        {
            path: '/login',
            name: 'login',
            component:Login,

        },
    ]
});

export default router;