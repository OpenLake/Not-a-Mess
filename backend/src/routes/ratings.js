const express = require('express')
const router = express.Router()
const Rating = require('../models/rating')


router.get('/', async(req, res) => {
    try{
            const ratings = await Rating.find()
            res.json(ratings)
    }catch(err){
        res.send('Error' + err)
    }
})

router.get('/:id', async(req, res) => {
    try{
            const rating = await Rating.findById(req.params.id)
            res.json(rating)
    }catch(err){
        res.send('Error' + err)
    }
})


router.post('/', async(req, res) => {
    const rating = new Rating({
        date: req.body.date,
        user_id: req.body.user_id,
        food_id: req.body.food_id,
        stars: req.body.stars,
        tags: req.body.tags
    })

    try{
        const u1 = await rating.save()
        res.json(u1)
    }catch(err){
        res.send('Error')
    }
})


router.delete('/:id', async(req, res) => {
    try{
        const rating = await Rating.findByIdAndDelete(req.params.id)
        res.send('Deleted Record...')
    }catch(err){
        res.send('Error')
    }
})

router.patch('/:id', async(req, res) => {
    try{
        const rating = await Rating.findById(req.params.id)
        rating.date = req.body.date
        rating.user_id = req.body.user_id
        rating.food_id = req.body.food_id
        rating.stars = req.body.stars
        rating.tags = req.body.tags
        const u1 = await rating.save()
        res.json(u1)
    }catch(err){
        res.send('Error')
    }
})


module.exports = router