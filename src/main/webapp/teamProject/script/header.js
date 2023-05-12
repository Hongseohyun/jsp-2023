const navImg = document.querySelectorAll('.sub-gnb img'),
      header = document.querySelector('header');
      section = document.querySelectorAll('section'),
      form = document.getElementsByTagName('form')[0],
      input = document.getElementsByTagName('input')[0];
let isSlideState = true;
      
for(let i=0; i<navImg.length; i++){
    navImg[i].addEventListener('click', () => {
        
        for(let item of slideWrap) item.style.display = 'none';
        
        console.log(isSlideState);
        if(isSlideState) {
            slideWrap[i].style.display = 'block';
            isSlideState = false;
            for(let item of section) item.style.filter = 'blur(7px)'
            header.style.backgroundColor = '#fff';
        } else {
            slideWrap[i].style.display = 'none';
            for(let item of section) item.style.filter = 'none'
            header.style.backgroundColor = 'rgb(244, 244, 244, 0.5)';
            isSlideState = true;
        }
    })
}


// input submit handler
form.addEventListener('submit', e => {                
    if(input.value == ''){
        e.preventDefault();
        alert('검색어를 입력해주세요.')
    } else if(input.value.length < 2) {
        e.preventDefault();
        alert('검색어는 두글자 이상 입력해주세요.')
    }
});