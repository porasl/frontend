
const createConfirm = (message,id) => {

    $('#confirmYes').off('click');
    $('#confirmNo').off('click');
    
    $('#confirmYes').on('click', ()=> { $('.confirm').hide(); remove(id); hideLableIfDoesExist(id+"_name") });
    $('#confirmNo').on('click', ()=> { $('.confirm').hide(); });
    
    $('#confirmId').show();
}
                     
const saveForm = async () => {
  $('#confirmMessage').text('Are you sure you want to do this?');
  if(confirm){
    alert('yes clicked');
  } else{
    alert('no clicked');
  }
}

const hideLableIfDoesExist = (id) =>{
   if($("#"+id)){
     hide(id);
   }
}