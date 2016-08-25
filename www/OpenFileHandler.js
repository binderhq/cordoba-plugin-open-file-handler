var OpenFileHandler = function() {
};

OpenFileHandler.prototype.registerForFileOpenNotification = function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "PushPlugin", "register");
}

module.exports = OpenFileHandler;