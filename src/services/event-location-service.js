import EventLocationRepository from '../repositories/event-location.js';

export default class EventLocationService {
    constructor() {
        this.repo = new EventLocationRepository();
    }

    getAllAsync() {
        return this.repo.getAllAsync();
    }

    getByIdAsync(id) {
        return this.repo.getByIdAsync(id);
    }

    getByProvinceAsync(id) {
        return this.repo.getByProvinceAsync(id);
    }

    getByLocationAsync(id) {
        return this.repo.getByLocationAsync(id);
    }
}