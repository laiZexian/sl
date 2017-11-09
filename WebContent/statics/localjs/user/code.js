function addCode(role){
	var date =new Date();
	var da = date.getDate();
	var month =date.getMonth();
	var year =date.getFullYear();
	var day =date.getDay();
	var hour =date.getHours();
	var minu =date.getMinutes();
	var second =date.getSeconds();
	var miss =date.getMilliseconds();
	var str =role+year+month+da+hour+minu+second+miss;
	return str;
}