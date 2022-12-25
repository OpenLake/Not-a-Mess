const express = require('express')
const router = express.Router()
const User = require('../models/user')


router.get('/', async(req, res) => {
    try{
            const users = await User.find()
            res.json(users)
    }catch(err){
        res.send('Error' + err)
    }
})

router.get('/:id', async(req, res) => {
    try{
            const user = await User.findById(req.params.id)
            res.json(user)
    }catch(err){
        res.send('Error' + err)
    }
})


router.post('/', async(req, res) => {
    const user = new User({
        name: req.body.name,
        id: req.body.id,
        mngmt: req.body.mngmt
    })

    try{
        const u1 = await user.save()
        res.json(u1)
    }catch(err){
        res.send('Error')
    }
})


router.delete('/:id', async(req, res) => {
    try{
        const user = await User.findByIdAndDelete(req.params.id)
        // const u1 = await user.delete()
        // res.json(u1)
        res.send('Deleted Record...')
    }catch(err){
        res.send('Error')
    }
})

router.patch('/:id', async(req, res) => {
    try{
        const user = await User.findById(req.params.id)
        user.name = req.body.name
        user.id = req.body.id
        user.mngmt = req.body.mngmt
        const u1 = await user.save()
        res.json(u1)
    }catch(err){
        res.send('Error')
    }
})


module.exports = router