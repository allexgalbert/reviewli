<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\backend\ReviewRequest;
use App\Models\Review;

class ReviewController extends Controller {


  public function index() {
    return view('backend.reviews.index', [
      'reviews' => Review::query()->latest()->paginate(10)
    ]);
  }


  public function edit($locale, Review $review) {
    return view('backend.reviews.edit', ['review' => $review]);
  }



  public function update($locale, ReviewRequest $request, Review $review) {
    $review->update($request->all());
    return redirect()->route('backend.reviews.index')->with('success', 'отзыв изменен');
  }


  public function destroy($locale, Review $review) {
    $review->delete();
    return redirect()->route('backend.reviews.index')->with('success', 'отзыв удален');
  }
}
