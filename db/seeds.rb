User.destroy_all

lucy = User.create(name: 'Lucy', password: 'password')

lucy.avatar.attach(
    io: File.open('./public/avatars/boy.png'),
    filename: 'boy.png',
    content_type: 'application/png'
)
