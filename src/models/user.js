const mongoose = require('mongoose')

const userSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    id: {
        type: String,
        required: true
    },
    mngmt: {
        type: Boolean,
        required: true,
        default: false
    }
})

module.exports = mongoose.model('User', userSchema)