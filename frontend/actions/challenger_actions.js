 import * as APIUtils from '../util/challenger_utils';
// import { receiveAlbums } from './album_actions';
// import { receiveTracks } from './track_actions';

export const RECEIVE_CHALLENGERS = 'RECEIVE_CHALLENGERS';
export const RECEIVE_CHALLENGER = 'RECEIVE_CHALLENGER';
export const RECEIVE_CHALLENGER_ERRORS = 'RECEIVE_CHALLENGER_ERRORS';

export const receiveChallengers = (challengers) => ({
    type: RECEIVE_CHALLENGERS,
    challengers
});

export const receiveChallenger = (challenger) => ({
    type: RECEIVE_CHALLENGER,
    challenger
});

export const receiveErrors = (errors) => ({
    type: RECEIVE_CHALLENGER_ERRORS,
    errors
});

export const fetchChallengers = () => dispatch => {
    return APIUtils.fetchChallengers ().then(challengers => (
        dispatch(receiveArtists(challengers))
    ), error => (
        dispatch(receiveErrors(error.responseJSON))
    ));
};

export const fetchChallenger = (id) => dispatch => {
    return APIUtils.fetchChallenger(id).then(challenger => {
        dispatch(receiveChallenger(challenger));
    }, error => (
        dispatch(receiveErrors(error.responseJSON))
    ));
};

export const fetchTeamChallengers = () => dispatch => {
    return APIUtils.fetchTeamChallengers().then(challengers => (
        dispatch(receiveChallengers(challengers))
    ), error => (
        dispatch(receiveErrors(error.responseJSON))
    ));
};

// export const fetchFeaturedArtists = () => dispatch => {
//     return APIUtils.fetchFeaturedArtists().then(artists => (
//         dispatch(receiveArtists(artists))
//     ), error => (
//         dispatch(receiveErrors(error.responseJSON))
//     ));
// };
