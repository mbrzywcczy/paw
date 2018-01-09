<?php

class main_display
{
    public function displayOfferBlock($desc, $path, $id, $type, $last, $commentsAmount, $rate)
    {
        if ($last) {
            $col = 12;
        } else {
            $col = 6;
        }

        if ($rate == '') {
            $rate = '-';
        }

        if (strlen($desc) > 60) {
            $desc = substr($desc, 0, 50) . '...';
        }

        echo '<div class="col-md-' . $col . '" style="padding: 10px;">
    <div class="form-group">
        <div class="card-box">
            <div class="row">
                <div class="col-md-3" style="border-right: 1px solid #eee;">
                    <img src="' . $path . '"
                         class="img-circle">
                </div>
                <div class="col-md-7">' . $desc . '</div>
                <div class="col-md-2">
                    <p> ' . $commentsAmount . ' <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right"
                                title="Komentarzy"></span></p>
                    <p> ' . $rate . ' <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right"
                                 title="Ocena"></span></p>
                </div>
            </div>
            <a href="offert.php?type=' . $type . '&id=' . $id . '">
                <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
            </a>
        </div>
    </div>
</div>';
    }
}