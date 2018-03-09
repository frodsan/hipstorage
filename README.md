# hipstorage

Active Storage demo based on ["Railscasts Episode #253: CarrierWave File Uploads"](https://github.com/railscasts/253-carrierwave-file-uploads).

# Description

This demo includes:

- Setting up Active Storage.
- Handling single file uploads.
- Handling multiple files uploads.
- Making a JavaScript image gallery with [Stimulus](https://github.com/stimulusjs/stimulus).
- Transforming images using [ImageMagick](http://edgeguides.rubyonrails.org/active_storage_overview.html#transforming-images).
- Uploading files directly to Amazon S3.

If you want to see the changes required for each feature, see the commit history:

<https://github.com/frodsan/hipstorage/commits/master>

For more information about Active Storage, see:

<http://edgeguides.rubyonrails.org/active_storage_overview.html>

# Setup

Run:

```
$ cd [before|after]
$ bin/setup
```

To configure the S3 adapter, you need to add your own S3 keys to the credentials file.
Run the following command to create and edit this file:

```
$ EDITOR=[vim|code|atom] bin/rails credentials:edit
```

Write the following content with your own S3 keys:

```yml
aws:
  access_key_id: my_s3_access_key_id
  secret_access_key: my_s3_secret_access_key
```

Make sure that your amazon configuration is correct in `config/storage.yml`:

```yml
# ...

amazon:
  service: S3
  access_key_id: <%= Rails.application.credentials.dig(:aws, :access_key_id) %>
  secret_access_key: <%= Rails.application.credentials.dig(:aws, :secret_access_key) %>
  region: my_region
  bucket: my_bucket
```
