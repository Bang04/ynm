/**
 * 
 */
$(document).ready(function(){
	//파일업로드
	$("#uploadFile").on('change', function() {
		attach.uploadFile();
	});
	
	//파일삭제
	$("#deleteFile").on('click', function(e) {
		console.log("파일 삭제하기");
		var file_no = $(this).attr("data");
		attach.deleteFile(file_no);
	});
	
	//다운로드
	$("#down").on("click", function(e){
		var file_no = $(this).attr("data");
		alert("no: "+file_no);
		$("#FILE_NO").attr("value", file_no);
		attach.downloadFile();
	});
	
	attach = new attach();
	
});

function attach() {
	this.init = function(){
		
	},
	this.uploadFile = function(){ 
		var formData = new FormData($('#form')[0]);
		var file_group = 0;
		$.ajax({
			type : "POST",         
			enctype: 'multipart/form-data',
			url : "/ynm/attach/upload",
			data: formData, 
			processData: false,  
			contentType: false,  
			cache: false, 
			success : selectFileList,
			error   : function(result, textStatus, jqXHR){
				alert('업로드 실패!');
				console.log("code:"+result.status+"\n"+"message:"+result.responseText+"\n"+"error:"+textStatus);
	
			}
		});
	},
	this.deleteFile = function(file_no){ 
		var formData = {
			"FILE_GROUP":$("#FILE_GROUP").val()
			,"FILE_NO": file_no
		};
		$.ajax({
			type : "POST",                               
			url : "/ynm/attach/delete",                   
			json : true,                           
			data : formData,                 
			success : selectFileList,
			error   : function(result, textStatus, jqXHR){
				alert('삭제 실패');
			}
		});		
	},
	this.downloadFile = function(){ 
		var formData = $("#form").serializeObject();
		$.ajax({
			type : "POST",                               
			url : "/ynm/attach/download",
			data: formData, 
			cache: false, 
			json:true,
			success : function(result, textStatus, jqXHR){
				alert("다운로드 성공");
			},
			error   : function(result, textStatus, jqXHR){
				alert("다운로드 실패");
			}
		});
	}
}

var selectFileList = function(data, resul){
	var file_group = 0;
	$('#fileList div').remove();
	 $.each(data, function(i, item) {
		$('#fileList').append("<div>" + item.ORG_FILE_NAME + "<span>"+item.FILE_SIZE+" byte</span><button type='button' id='deleteFile' data="+item.FILE_NO+">삭제</button></div>");
		file_group = item.FILE_GROUP;
	});
	 if($("#FILE_GROUP").val() == 0){
		 $("#FILE_GROUP").val(file_group);
	 }
	
}