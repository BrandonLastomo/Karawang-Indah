<style>
    #uni_modal .modal-content>.modal-footer,#uni_modal .modal-content>.modal-header{
        display:none;
    }
</style>
<div class="container-fluid">
    <h3 class="float-left">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </h3>
    <h3 class="text-center">Create New Account</h3>
    <hr class='border-primary'>
        <form action="" id="registration">
            <div class="form-group">
                <label for="" class="control-label">Firstname</label>
                <input type="text" class="form-control form-control-sm form" name="firstname" required>
            </div>
            <div class="form-group">
                <label for="" class="control-label">Lastname</label>
                <input type="text" class="form-control form-control-sm form" name="lastname" required>
            </div>
            <div class="form-group">
                <label for="" class="control-label">Username</label>
                <input type="text" class="form-control form-control-sm form" name="username" required>
            </div>
            <div class="form-group">
                <label for="" class="control-label">Password</label>
                <input type="password" class="form-control form-control-sm form" name="password" required>
            </div>
            <div class="form-group d-flex justify-content-end">
                <button class="btn btn-primary btn-flat">Register</button>
            </div>
        </form>
</div>

<script>
    $(function(){
        $('#registration').submit(function(e){
            e.preventDefault();
            start_loader()
            if($('.err-msg').length > 0)
                $('.err-msg').remove();
            $.ajax({
                url:_base_url_+"classes/Master.php?f=register",
                method:"POST",
                data:$(this).serialize(),
                dataType:"json",
                error:err=>{
                    console.log(err)
                    alert_toast("an error occured",'error')
                    end_loader()
                },
                success:function(resp){
                    if(typeof resp == 'object' && resp.status == 'success'){
                        alert_toast("Account succesfully registered",'success')
                        setTimeout(function(){
                            location.reload()
                        },2000)
                    }else if(resp.status == 'failed' && !!resp.msg){
                        var _err_el = $('<div>')
                            _err_el.addClass("alert alert-danger err-msg").text(resp.msg)
                        $('#registration').prepend(_err_el)
                        end_loader()
                        
                    }else{
                        console.log(resp)
                        alert_toast("an error occured",'error')
                        end_loader()
                    }
                }
            })
        })
    })
</script>