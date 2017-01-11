server-warning-message:
  smtp.send_msg:
    - name: 'This is a server warning message'
    - profile: my-smtp-account
    - subject: 'Message from Salt'
    - recipient: sumeetisp@gmail.com
    - sender: admin@example.com
    - use_ssl: True
