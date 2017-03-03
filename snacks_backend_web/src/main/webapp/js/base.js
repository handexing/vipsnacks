var Class = function(parent) {
	var klass = function() {
		this.init.apply(this, arguments);
	}
	if (parent) {
		var subclass = function() {
		};
		subclass.prototype = parent.prototype;
		klass.prototype = new subclass;
	}
	;
	klass.prototype.init = function() {

	};
	klass.fn = klass.prototype;
	klass.fn.parent = klass;
	klass.extend = function(obj) {
		for ( var i in obj) {
			klass[i] = obj[i];
		}
	};
	klass.include = function(obj) {
		for ( var i in obj) {
			klass.fn[i] = obj[i];
		}
	}
	return klass;
}