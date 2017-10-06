<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Summernote</title>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.js"></script>
</head>
<body>

<div class="col-sm-10">
    <div id="contact-form-section">
        <div class="status alert alert-success" style="display: none"></div>
        <form id="contact-form" class="contact" name="contact-form" method="post" action="">
            <div class="form-group">
                <input id="mtitle" type="text"  class="form-control name-field" required="required" placeholder="Your Title">
            </div>

            <div class="form-group">
                <div id="summernote"><p>Hello Summernote</p></div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary" onclick="send()">Submit</button>
            </div>
        </form>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            lang: 'zh-CN', // default: 'en-US'
            height: 300
//            ,
//            onImageUpload: function(files, editor, welEditable) {
//                sendFile(files[0],editor,welEditable);
//            }
        });
    });

    function sendFile(file,editor,welEditable) {
        data = new FormData();
        data.append("file", file);
        $.ajax({
            data: data,
            type: "POST",
            url: "",
            cache: false,
            contentType: false,
            processData: false,
            success: function(data) {
                editor.insertImage(welEditable, data.url);
            }
        });
    }
    function send(){
        var content = $('#summernote').summernote('code');

        //var content=$('#summernote').code();
         var mtitle=$('mtitle').val();
        alert(mtitle);
        var url="/insertPost?title="+mtitle+"&content="+content;
        alert(url);
        window.open(url);
        window.location = url;
    }
</script>
</body>

</html>
