<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact</title>
</head>

<body>
    <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="mail.php" method="POST"
        enctype="multipart/form-data">
        <div class="form-floating mb-3">
            <input class="form-control" id="name" type="text" name="name" placeholder="Enter your name..."
                data-sb-validations="required" />
            <label for="name">Full name</label>
            <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" id="email" type="email" name="email" placeholder="name@example.com"
                data-sb-validations="required,email" />
            <label for="email">Email address</label>
            <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
            <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" id="subject" type="text" name="subject" placeholder="Subject"
                data-sb-validations="required" />
            <label for="subject">Subject</label>
            <div class="invalid-feedback" data-sb-feedback="subject:required">A subject is required.</div>
        </div>
        <div class="form-floating mb-3">
            <textarea class="form-control" id="message" type="text" name="message"
                placeholder="Enter your message here..." style="height: 10rem"
                data-sb-validations="required"></textarea>
            <label for="message">Message</label>
            <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>

</html>