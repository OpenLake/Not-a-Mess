const mongoose = require('mongoose')

const userSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    email: {
        type: String,
        required: true,
        unique: true
    },
    mngmt: {
        type: Boolean,
        required: true,
        default: false
    }
})

module.exports = mongoose.model('User', userSchema)