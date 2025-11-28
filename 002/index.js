var Jonathan = /** @class */ (function () {
    function Jonathan() {
        this.BirthYear = 1950;
    }
    Object.defineProperty(Jonathan.prototype, "Edad", {
        get: function () {
            return new Date().getFullYear() - this.BirthYear;
        },
        set: function (val) {
            this.BirthYear = new Date().getFullYear() - val;
            /*
              codigo que me de la gana
            */
        },
        enumerable: false,
        configurable: true
    });
    Jonathan.prototype.getEdad = function () {
        return new Date().getFullYear() - this.BirthYear;
    };
    Jonathan.prototype.setEdad = function (val) {
        this.BirthYear = new Date().getFullYear() - val;
    };
    return Jonathan;
}());
var jona = new Jonathan();
jona.BirthYear = 1977;
console.log(jona.Edad);
jona.Edad = 50;
console.log(jona.Edad);
