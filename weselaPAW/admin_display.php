<?php
class admin_display
{
    public function displayFormEditReview($type, $id, $review, $rate)
    {
        echo '<form action="/paw/admin/edit.php" style="padding: 20px;">';
        echo '<input type="text" name="type" value="' . $type . '" hidden>';
        echo '<input type="text" name="id" value="' . $id . '" hidden>';
        echo '<input type="text" name="edit" value="true" hidden>';

        echo '<div class="form-group">';
        echo '<label>Komentarz</label>';
        echo '<input class="form-control" type="text" name="review" maxlength="512" value="' . $review . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Ocena</label>';
        echo '<input class="form-control" type="number" min="1" max="10" name="rate" value="' . $rate . '"></div>';

        echo '<br/><input type=submit class="btn btn-success" style="width:100%" value="Dodaj zmieniony rekord"></form>';
    }

    public function displayFormAddEditCoupleTransportDetails($type, $id, $action, $type_name, $description, $price,
                                                             $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);
        $this->displayTypeInput($type_name);
        $this->displayDescriptionInput($description);

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price" min="0" value=" max="1000000"' . $price . '"></div>';

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditGuestTransportDetails($type, $id, $action, $type_name, $description, $price_flat,
                                                            $price_person, $person, $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);
        $this->displayTypeInput($type_name);
        $this->displayDescriptionInput($description);

        echo '<div class="form-group">';
        echo '<label>Cena (pojazd)</label>';
        echo '<input class="form-control" type="number" name="price_flat" min="0" max="1000000" value="' . $price_flat . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (za osobę)</label>';
        echo '<input class="form-control" type="number" name="price_per_person" min="0" max="1000000" value="' . $price_person . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Ilość osób (na pojazd)</label>';
        echo '<input class="form-control" type="number" name="person_amount_per_unit" min="0" max="1000000" value="' . $person . '"></div>';

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditConsultantDetails($type, $id, $action, $first_name, $last_name, $description,
                                                        $price, $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);
        $this->displayFirstLastNameInputs($first_name, $last_name);
        $this->displayDescriptionInput($description);

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price" min="0" max="1000000" value="' . $price . '"></div>';

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditPhotoDetails($type, $id, $action, $first_name, $last_name, $company_name, $description,
                                                   $photo_price, $video_price, $drone_price, $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);
        $this->displayFirstLastNameInputs($first_name, $last_name);

        echo '<div class="form-group">';
        echo '<label>Firma</label>';
        echo '<input class="form-control" type="text" name="company_name" maxlength="64" value="' . $company_name . '"></div>';

        $this->displayDescriptionInput($description);

        echo '<div class="form-group">';
        echo '<label>Zdjęcia - cena</label>';
        echo '<input class="form-control" type="text" name="photo_price" min="0" max="1000000" value="' . $photo_price . '">';
        echo '<small class="form-text text-muted">Pozostawienie pola pustego lub wpisanie 0 oznacza brak wykonywane usługi.</small></div>';

        echo '<div class="form-group">';
        echo '<label>Wideo - cena</label>';
        echo '<input class="form-control" type="text" name="video_price" min="0" max="1000000" value="' . $video_price . '">';
        echo '<small class="form-text text-muted">Pozostawienie pola pustego lub wpisanie 0 oznacza brak wykonywane usługi.</small></div>';

        echo '<div class="form-group">';
        echo '<label>Dron - cena</label>';
        echo '<input class="form-control" type="text" name="drone_price" min="0" max="1000000" value="' . $drone_price . '">';
        echo '<small class="form-text text-muted">Pozostawienie pola pustego lub wpisanie 0 oznacza brak wykonywane usługi.</small></div>';

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditMusicDetails($type, $id, $action, $type_name, $name, $description, $price_flat,
                                                   $price_person, $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);
        $this->displayTypeInput($type_name);

        echo '<div class="form-group">';
        echo '<label>Nazwa</label>';
        echo '<input class="form-control" type="text" name="name" maxlength="64" value="' . $name . '"></div>';

        $this->displayDescriptionInput($description);

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price_flat" min="0" max="1000000" value="' . $price_flat . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (za osobę)</label>';
        echo '<input class="form-control" type="number" name="price_per_person" min="0" max="1000000" value="' . $price_person . '"></div>';

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditTypeDetails($type, $id, $action, $type_name, $description, $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="128" value="' . $type_name . '"></div>';

        $this->displayDescriptionInput($description);

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditPlaceDetails($type, $id, $action, $type_name, $description, $price_flat, $price_person,
                                                   $person, $state, $city, $street, $path)
    {
        $this->displayFormStart($type, $id, $action);
        $this->displayTypeInput($type_name);
        $this->displayDescriptionInput($description);

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price_flat" min="0" max="1000000" value="' . $price_flat . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (za osobę)</label>';
        echo '<input class="form-control" type="number" name="price_per_person" min="0" max="1000000" value="' . $price_person . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Maksymalna ilość gości</label>';
        echo '<input class="form-control" type="number" name="max_guests" min="0" max="1000000" value="' . $person . '"></div>';

        $this->displayAddressAndImageInputs($state, $city, $street, $path);
        $this->displayFormEnd($action);
    }

    private function displayFirstLastNameInputs($first_name, $last_name)
    {
        echo '<div class="form-group">';
        echo '<label>Imię</label>';
        echo '<input class="form-control" type="text" name="first_name" maxlength="32" value="' . $first_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Nazwisko</label>';
        echo '<input class="form-control" type="text" name="last_name" maxlength="32" value="' . $last_name . '"></div>';
    }

    private function displayTypeInput($type_name)
    {
        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="64" value="' . $type_name . '"></div>';
    }

    private function displayDescriptionInput($description)
    {
        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';
    }

    private function displayAddressAndImageInputs($state, $city, $street, $path)
    {
        echo '<div class="form-group">';
        echo '<label>Województwo</label>';
        echo '<input class="form-control" type="text" name="state" maxlength="128" value="' . $state . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Miasto</label>';
        echo '<input class="form-control" type="text" name="city" maxlength="128" value="' . $city . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Ulica</label>';
        echo '<input class="form-control" type="text" name="street" maxlength="128" value="' . $street . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Lokalizacja zdjęcia na serwerze</label>';
        echo '<input class="form-control" type="text" name="img_src" maxlength="128" value="' . $path . '"></div>';
    }

    private function displayFormStart($type, $id, $action)
    {
        echo '<form action="/paw/admin/' . $action . '.php" style="padding: 20px;">';
        echo '<input type="text" name="type" value="' . $type . '" hidden>';
        echo '<input type="text" name="id" value="' . $id . '" hidden>';
        echo '<input type="text" name="' . $action . '" value="true" hidden>';
    }

    private function displayFormEnd($action)
    {
        $edit = "";
        if ($action == "edit") {
            $edit = 'zmieniony ';
        }
        echo '<br/><input type=submit class="btn btn-success" style="width:100%" value="Dodaj ' . $edit . 'rekord"></form>';
    }
}