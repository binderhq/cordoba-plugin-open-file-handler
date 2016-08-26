var exec = require('cordova/exec');

exports.checkForOpenedFile = function(success, error) {
    exec(success, error, "OpenFileHandler", "checkForOpenedFile");
};