var calculateComplexity = function (password){
    var complexity = 0;

    var regExps = [
        /[a-z]/,
        /[A-Z]/,
        /[0-9]/,
        /.{8}/,
        /.{16}/
    ];

    regExps.forEach(function (regexp){
        if (regexp.test(password)){
            complexity++;
        }
    });

    return {
        value:complexity,
        max: regExps.length
    };
};

var checkPasswdStr = function (password){
    var progress = document.querySelector('#pswdc'),
        complexity = calculateComplexity(this.value);

    progress.value = complexity.value;
    progress.max = complexity.max;
};

var input=document.querySelector('#pswdf');
input.addEventListener('keyup',checkPasswdStr);