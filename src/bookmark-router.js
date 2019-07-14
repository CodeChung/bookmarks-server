const express = require('express')
const store = require('./store')
const logger = require('./logger')
const uuid = require('uuid/v4')

const bookmarkRouter = express.Router()
const jsonBodyParser = express.json()

bookmarkRouter
    .route('/bookmarks')
    .get((req, res) => {
        res.json(store.bookmarks)
    })
    .post(jsonBodyParser, (req, res) => {
        const bookmark = req.body
        console.log(bookmark)
        for (const key of ['title', 'url', 'rating']) {
            if (!bookmark[key]) {
                logger.error(`${key} is required`)
                return res.status(400).send(`${key} is required`)
            }
        }
        const { title, url, description, rating } = bookmark
        if (!Number.isInteger(rating) || rating > 5 || rating < 0) {
            logger.error(`Rating must be between 0 and 5`)
            return res.status(400).send('rating must be between 0 and 5')
        }
        const validBookmark = { id: uuid(), title, url, description, rating }
        store.bookmarks.push(validBookmark)

        logger.info(`Bookmark with id ${validBookmark.id} created`)
        res.status(201)
            .json(validBookmark)
    })

bookmarkRouter
    .route('/bookmarks/:id')
    .get((req, res) => {
        const { id } = req.params
        const bookmark = store.bookmarks.find(mark => mark.id == id)
        console.log(store.bookmarks)
        if (!bookmark) {
            logger.error(`${id} is invalid`)
            return res.status(404).send(`${id} not found`)
        }
        logger.info(`Sending valid bookmark`)
        res.json(bookmark)

    })
    .delete((req, res) => {
        const { id } = req.params
        const bookmark = store.bookmarks.find(mark => mark.id == id)
        console.log(store.bookmarks)
        if (!bookmark) {
            logger.error(`${id} is invalid`)
            return res.status(400).send(`${id} is invalid`)
        }
        logger.info(`deleting bookmark ${id}`)
        const bookmarkIndex = store.bookmarks.findIndex(mark => mark.id === id)
        store.bookmarks.splice(bookmarkIndex, 1)
        res.status(204)
            .end()
    })
    

module.exports = bookmarkRouter