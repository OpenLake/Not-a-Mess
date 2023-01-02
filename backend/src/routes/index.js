const { ratings_get_all, ratings_get_id, ratings_post, ratings_delete, ratings_patch } = require("./ratings.route");
const { users_get_all, users_get_id, users_post, users_delete, users_patch } = require("./users.route");

router.get('/', ratings_get_all);
router.get('/:id', ratings_get_id);
router.post('/', ratings_post);
router.delete('/:id', ratings_delete);
router.patch('/:id', ratings_patch);

router.get('/', users_get_all);
router.get('/:id', users_get_id);
router.post('/', users_post);
router.delete('/:id', users_delete);
router.patch('/:id', users_patch);
