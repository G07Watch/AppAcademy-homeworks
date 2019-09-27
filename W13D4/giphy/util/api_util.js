
function fetchSearchGiphys(searchTerm){

  return (
    $.ajax({
      method: 'GET',
      url: `api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=dc6zaTOxFJmzC&limit=2`,
      dataType: 'json'
    })
  );

}

export default fetchSearchGiphys;