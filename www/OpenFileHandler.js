var OpenFileHandler = function() {
};

OpenFileHandler.prototype.checkForOpenedFile = function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "PushPlugin", "checkForOpenedFile");
}

module.exports = OpenFileHandler;