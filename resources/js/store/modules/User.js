const state={
    isAdmin:false,
    isValidToken:false,
}

const mutations={
    setAdmin(state,value){
        state.isAdmin=value;
    },
    checkToken(state){
        let access_token=localStorage.getItem('token');
        let token=access_token.split('.');
        token=JSON.parse(atob(token[1]));
        let iss=token['iss'];
        console.log(iss)
        if(iss==='http://127.0.0.1:8000/api/auth/login'){
            state.isValidToken=true;
        }
        else{
            state.isValidToken=false;
        }
    },
}

const actions={
    isAdmin({commit},value){
        commit('setAdmin',value);
    },
    isLogged({dispatch,commit,getters}){
        if(localStorage.getItem('token')){
            commit('checkToken')
                if(getters.getIsValidToken){
                    axios({
                        method: 'post',
                        url: '/api/auth/me',
                        headers: {'Authorization': 'Bearer ' + localStorage.getItem('token')}
                    }).then(res=>{
                        dispatch('isAdmin',res.data.isAdmin);
                    }).catch(err=>console.log(err))
                }

        }
    }
}

const getters={
    getIsAdmin(state){
        return state.isAdmin;
    },
    getIsValidToken(state){
        return state.isValidToken;
    },
}

export default {
    state,mutations,actions,getters
}