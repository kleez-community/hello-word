import nanoexpress from 'nanoexpress';

const PORT = process.env.PORT;
const app = nanoexpress();


app
    .get('/', (req, res) => {
        console.log('Listening on ${ PORT }');
        return res.send({ status: 'ok2' });
    })
    .get('/hello', (req, res) => {
        return res.send('word');
    })
;

app.listen(PORT);
