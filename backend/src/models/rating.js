const mongoose = require('mongoose')

const ratingSchema = mongoose.Schema({
    date: {
        type: String,
        required: true
    },
    user_id: {
        type: String,
        required: true
    },
    food_id: {
        type: String,
        required: true
    },
    stars: {
        type: Number,
        required: true
    },
    tags: [{
        type: String
    }]
})

module.exports = mongoose.model('Rating', ratingSchema)