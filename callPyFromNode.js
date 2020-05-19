let { PythonShell } = require('python-shell')
var exec = require('child_process').exec;

var options = {
    mode: 'text',
    pythonPath: 'path/to/python',
    pythonOptions: ['-u'], // get print results in real-time
    //    scriptPath: 'path/to/my/scripts',
    //    args: ['value1', 'value2', 'value3']
};

const runPy = async function () {

    // go to foleder and get virtualenv path to call python
    return new Promise((resolve, reject) => {
        exec("cd $HOME/projects/eda-exploration; pipenv --venv", function (err, stdout, stderr) {

            if (err) {
                return "Error while looking for pipenv path"
            }

            var pythonPath = stdout.toString().replace(/\n/g, "") + "/bin/python3"
            resolve(pythonPath)
        });

    })
}


const executeInVenv = function (pathToPython) {

    options.pythonPath = pathToPython
    console.log(options.pythonPath)
    PythonShell.run('./pilot/py_test.py', options, function (err, results) {
        if (err) throw err;
        console.log('results: %j', results);
    })
}

module.exports.options = options
module.exports.executeInVenv = executeInVenv
module.exports.runPy = runPy

