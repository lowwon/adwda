<?php

namespace App\Policies;
use App\Models\User;
use App\Models\Post;
use App\Models\Role;
use App\Models\Topic;
use App\Models\Comment;
use App\Models\Subcomment;
use Illuminate\Auth\Access\HandlesAuthorization;

class SubcommentPolicy
{
    use HandlesAuthorization;

    public function before($user,$ability)
    {
        if($user->role_id > 2)
            return true;
    }
    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function delete(User $user,SubComment $subcomment)
    {
        return $user->id === $subcomment->user_id;
    }
}
