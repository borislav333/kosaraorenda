<template>
    <div class="container mt-4 ">

        <form class="border col-6 m-auto text-center " @submit.prevent="submit">
           <div class="form-group">
               <label for=""><b>Е-мейл</b></label>
               <input type="email" class="form-control" name="email" v-model="form.email">
           </div>
            <div class="form-group">
                <label for=""><b>Парола</b></label>
                <input type="password" class="form-control" name="password" v-model="form.password">

            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-danger" value="Вход" @click.prevent="submit" >
            </div>
        </form>
    </div>
</template>

<script>
    export default {
        name: "Login",
        data(){
            return {
                form:{
                    email:'',
                    password:'',
                }
            }
        },
        methods:{

          submit(){
              axios.post('/api/auth/login',this.form).then(res=>{

                  let access_token=res.data.access_token;
                  let token=access_token.split('.');
                  token=JSON.parse(atob(token[1]));
                  let iss=token['iss'];
                  if(iss==='http://127.0.0.1:8000/api/auth/login'){
                      localStorage.setItem('token',access_token);
                      this.$store.dispatch('isAdmin',res.data.is_admin);
                      this.$router.push('/events');
                  }
              }).catch(err=>console.log(err))
          }
        },
    }
</script>

<style scoped>
form{
    background-color: #E1BE60;
}
</style>