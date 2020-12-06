export const fetchChallengers = () => {
    return $.ajax({
        method: "GET",
        url: `/api/challengers`
    });
};

export const fetchChallenger = (id) => {
    return $.ajax({
        method: "GET",
        url: `/api/challengers/${id}`
    });
};

export const fetchTeamChallengers = () => {
    return $.ajax({
        method: "GET",
        url: `/api/challengers/team_challengers`
    });
};

// export const followArtist = (userId, artistId) => {
//     return $.ajax({
//         method: "POST",
//         url: `/api/artists/follow`,
//         data: { artist: { follower_id: userId, artist_id: artistId } }
//     });
// };

// export const unfollowArtist = (userId, artistId) => {
//     return $.ajax({
//         method: "DELETE",
//         url: `/api/artists/unfollow`,
//         data: { artist: { follower_id: userId, artist_id: artistId } }
//     });
// };