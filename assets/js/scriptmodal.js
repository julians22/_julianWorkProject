$(function () {
    $('.tombolTambahData').on('click', function () {
        $('#addMenuModalLabel').html('Add New Menu');
        $('.modal-footer button[type=submit]').html('Submit');
        $('#id').val("");
        $('#menu').val("");
        $('.modal-body form').attr('action', 'http://localhost/hc_uptothesky/menu');
    });

    $('.tampilModalUbah').on('click', function () {
        $('#addMenuModalLabel').html('Edit Menu');
        $('.modal-footer button[type=submit]').html('Save Changes');
        $('.modal-body form').attr('action', 'http://localhost/hc_uptothesky/menu/editmenu');
        const id = $(this).data('id');

        $.ajax({
            url: 'http://localhost/hc_uptothesky/menu/getMenuByID',
            data: {id : id},
            method: 'post',
            dataType: 'json',
            success: function(data) {
                $('#id').val(data.id);
                $('#menu').val(data.menu);
                $('#target').val(data.target);
                $('#icon').val(data.icon);
            }
        })
    });
});

$(function () {
    $('#tomb1').on('click', function (){
        var position = $('#tomb1').data('id');
        var e1 = $('#e1').val();
        console.log(position + e1);
    });
});