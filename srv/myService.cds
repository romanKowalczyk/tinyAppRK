using {
    onefile as my
} from '../db/dataDefinition';

service MyService {
    entity Books as projection on my.Books;

    @readonly
    entity Authors as projection on my.Authors;
}



