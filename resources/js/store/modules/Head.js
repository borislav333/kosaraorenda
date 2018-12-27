const state={

};

const mutations={
    setAlert(state){
        //alert(document.getElementsByTagName("BODY")[0].clientWidth);
    }

};

const actions={
    alert({commit}){
        commit('setAlert');
    },
};

const getters={

};

export default {
    state,
    mutations,
    actions,
    getters
}