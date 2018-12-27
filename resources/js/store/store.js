import Vue from 'vue'
import Vuex from 'vuex'
import Head from '../store/modules/Head.js'
import Event from '../store/modules/Event.js'
import User from '../store/modules/User.js'

Vue.use(Vuex);
export default new Vuex.Store({
    modules:{
        Head,
        Event,
        User,
    }
})