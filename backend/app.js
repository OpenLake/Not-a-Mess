const express = require('express')
const mongoose = require('mongoose')
const url = 'mongodb://localhost/UsersDB'

const app = express()

mongoose.connect(url, {useNewUrlParser:true})
const db = mongoose.connection

db.on('open', () => {
    console.log('connected...')
})

app.use(express.json())

const usersRouter = require('./src/routes/users')
app.use('/users', usersRouter)

const ratingsRouter = require('./src/routes/ratings')
app.use('/ratings', ratingsRouter)

app.listen(9000, () => {
    console.log('Server started')
})