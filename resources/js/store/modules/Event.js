const state={
    isEdited:false,
    obj:{},
}

const mutations={
    setIsEdited(state,boolean){
        state.isEdited=boolean;
    },
    setObj(state,obj){
        state.obj=obj;
    }
}

const actions={
    isEdited({commit},){
        commit('setIsEdited',true)
    },
    object({commit},obj){
        commit('setObj',obj)
    }
}

const getters={
    getIsEdited(state){
        return state.isEdited;
    },
    getObj(state){
        return state.obj;
    }
}

export default {
    state,
    mutations,
    actions,
    getters
}