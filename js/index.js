const name = document.getElementById('name');
const number = document.getElementById('number');
const email = document.getElementById('email');
const msg = document.getElementById('msg');
const submit = document.getElementByClassName('from-contact');

submit.addEventListener('submit',(e)=>{
    e.preventDefault();
	

    Email.send({
        SecureToken : "396b56fe-2cb8-4d36-8f39-ec971e4cd6d1",
        To : 'ksrathnayaka2000@gmail.com', 
        From : "ksrathnayaka2000@gmail.com",
        Subject : "This is the subject",
        Body : ebody
    }).then(
      message => alert(message)
    );
});