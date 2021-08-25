$(document).ready(function() {
  $(".removeButton").click(function(){
    $(".imageThumb").remove(); 
    $('#files').val("");

  });
    if (window.File && window.FileList && window.FileReader) {
      $("#files").on("change", function(e) {
        var files = e.target.files,
          filesLength = files.length;
        for (var i = 0; i < filesLength; i++) {
          var f = files[i]
          var fileReader = new FileReader();
          fileReader.onload = (function(e) {
            var file = e.target;
            $("<span class=\"pip\">" +
              "<img  class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
        
              "</span>").insertAfter("#files");
          
          });
          fileReader.readAsDataURL(f);
        }

      
       
        console.log(files);
      });
    } else {
      alert("Your browser doesn't support to File API")
    }
  });

  

  