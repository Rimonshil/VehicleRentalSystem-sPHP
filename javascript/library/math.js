function Round(Number, Precision) {
    var Factor = Math.pow(10, Precision);

	return (Math.round(Number * Math.pow(10, Precision)) / Factor).toFixed(Precision);
};

