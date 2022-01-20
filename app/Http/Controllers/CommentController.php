class CommentController extends Controller
{
    public function createComment(Request $rq, $id){
        $messages=[
            'areapost.required'=>'Bạn phải nhập nội dung!',
        ];
        $controls = [
            'areapost'=>'required',
        ];
        Validator::make($rq->all(),$controls, $messages)->validate();
        $saa = Comment::all();
        $e = 0;
        foreach($saa as $a){
            $e = $a->id;
        }
        $e = $e + 1;
        $date = new DateTime('now');
        if($rq->areapost != "")
        {
            $comment = Comment::create([
                'id' => $e,
                'Content' => $rq->areapost,
                'post_id'=> $id,
                'user_id' => Auth::user()->id,
                'date' => $date
            ]);
            $post = Post::where('id', $comment->post_id)->first();
            if(Auth::user()->id == $post->user_id)
                return back();
            else{
                $user = User::where('id',$comment->user_id)->first();
                $var = substr($post->Name,0,15);
                $ct = $user->name.' has comment on your post | '.$var."...";
                $ct = substr($ct,0,70);
                $l = $comment->post_id;
                $notification = Notification::create([
                    'content' => $ct,
                    'user_id' => $post->user_id,
                    'link' => $l,
                    'date' => new DateTime('now'),
                ]);
            }
        }
        return back();
    }
    public function delete($id){
        $comment = Comment::where('id',$id)->first();
        if(Auth::user()->id < 2)
        {
            $this->authorize($comment,'delete');
        }
        else{
            $user = User::where('id',$comment->user_id)->first();
            if(Auth::user()->role_id < $user->role_id)
                return back();
        }
        $subcomment = SubComment::where('comment_id',$id)->delete();
        $comment = Comment::where('id',$id)->delete();
        return back();
    }
}
