const express = require('express')
const router = express.Router()
const User = require('../models/user')


exports.users_get_all = async(req, res) => {
    try{
            const users = await User.find()
            res.json(users)
    }catch(err){
        res.send('Error' + err)
    }
}

exports.users_get_id = async(req, res) => {
    try{
            const user = await User.findById(req.params.id)
            res.json(user)
    }catch(err){
        res.send('Error' + err)
    }
}


exports.users_post = async(req, res) => {
    const user = new User({
        name: req.body.name,
        email: req.body.email,
        mngmt: req.body.mngmt,
    })

    try{
        const u1 = await user.save()
        res.json(u1)
    }catch(err){
        res.send('Error')
    }
}


exports.users_delete = async(req, res) => {
    try{
        const user = await User.findByIdAndDelete(req.params.id)
        res.send('Deleted Record...')
    }catch(err){
        res.send('Error')
    }
}

exports.users_patch = async(req, res) => {
    try{
        const user = await User.findById(req.params.id)
        user.name = req.body.name
        user.email = req.body.email
        user.mngmt = req.body.mngmt
        const u1 = await user.save()
        res.json(u1)
    }catch(err){
        res.send('Error')
    }
}


module.exports = router