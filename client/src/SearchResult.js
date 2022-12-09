import React from 'react';
import './SearchResult.css';
import {useHistory} from 'react-router-dom'

function SearchResult({
    img,
    location,
    title,
    description,
    star,
    price,
    total,
}) {
    const history=useHistory()
    return (
        <div className='searchResult'>
            <img src={img} alt="" />

            <div className='searchResult__info'>
                <div className="searchResult__infoTop">
                    <p>{location}</p>
                    <h3>{title}</h3>
                    <p>____</p>
                    <p>{description}</p>
                </div>

                <div className="searchResult__infoBottom">
                    <div className="searchResult__stars">
                        {/* <StarIcon className="searchResult__star" /> */}
                        <p>
                            <strong>{star}</strong>
                        </p>
                    </div>
                    <div className='searchResults__price'>
                        <h3>{price}</h3>
                        <p>{total}</p>
                    </div>
                    <button onClick={()=>history.push("/booking")} className='book'>Book house</button>
                </div>
            </div>
        </div>
    )
}

export default SearchResult
