import  express  from "express";
import cors from "cors";

import EventController from './controllers/event-controller';
import UserController from './controllers/user-controller';
import ProvinceController from './controllers/province-controller';
import EventLocationController from './controllers/event-location-controller';
import EventCategoryController from './controllers/event-category-controller';

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

app.use("/api/event", EventController);
app.use("/api/user", UserController);
app.use("/api/province", ProvinceController);
app.use("/api/location-controller", EventLocationController);
app.use("/api/location-category", EventCategoryController);

app.listen(port, () =>{
    console.log(`Listening on http://localhost:${port}`)
})