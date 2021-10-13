import nanoexpress from 'nanoexpress';

const PORT = process.env.PORT;
const app = nanoexpress();


app
    .get('/', (req, res) => {
        return res.send({ status: 'ok' });
    })
    .get('/hello', (req, res) => {
        return res.send('word');
    })
;

app.listen(PORT);
