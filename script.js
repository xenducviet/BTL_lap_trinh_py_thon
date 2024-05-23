document.addEventListener('DOMContentLoaded', function() {
    const button = document.createElement('button');
    button.textContent = 'Bấm vào tôi!';
    button.style.padding = '10px 20px';
    button.style.marginTop = '20px';
    button.style.fontSize = '16px';
    
    button.addEventListener('click', function() {
        alert('Chào mừng bạn đã bấm nút!');
    });
    
    document.querySelector('.container').appendChild(button);
});
