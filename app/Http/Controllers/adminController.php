<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\support\facades\Input;
use View;
use DB;
use File;
use App\image;
use App\developer;
use App\developer_experience;
use App\developer_skill;
use App\announcement;
use App\attachment;
use App\blog;
use App\tag_relation;
use App\tag;
use App\award;

class adminController extends Controller
{

    public function gallery()
    {
       $data=DB::table('images')
             ->get();

    	 return view::make('admin.gallery')->with('data',$data);
    }

    public function gallery_add()
    {
       
       //return Input::all();
      //  return Input::get('same[0]');

       if(Input::hasFile('avatar')) 
       {
       	$avatar=Input::file('avatar');
       	$filename=time().'.'.$avatar->getClientOriginalExtension();
        $avatar->move(public_path().'/'.'img'.'/'.'gallery'.'/',$filename);
        $description=Input::get('description');

        $image=new image;
        $image->dir='img/gallery/'.$filename;
        $image->description=$description;
        $image->save();
      //  echo "all is well";
        return redirect('/admin/gallery');
       }
    }

    public function gallery_update_first($id)
    {
            $data=DB::table('images')
           ->where('id','=',$id)
           ->first();

      return view::make('admin.gallery_update')->with('data',$data);
    }

    public function gallery_update_second($id)
    {
     echo $id;
    // return Input::all();

     if(Input::hasFile('avatar')) 
       {
      //  return "hey";
        $avatar=Input::file('avatar');
        $filename=time().'.'.$avatar->getClientOriginalExtension();
      //  return $filename;
        $avatar->move(public_path().'/'.'img'.'/'.'gallery'.'/',$filename);
        DB::table('images')
            ->where('id','=',$id)
            ->update(['dir' =>'img/gallery/'.$filename]);    
       }

      $description=Input::get('description');
      DB::table('images')
          ->where('id','=',$id)
          ->update(['description'=>$description]);
    //  return $description;
      return redirect('/admin/gallery');
    }

    public function gallery_delete($id)
    {
           DB::table('images')
           ->where('id','=',$id)
           ->delete();

      return redirect('/admin/gallery');       
    }

    public function developer_list()
    {
      $data=DB::table('developers')
            ->get();

      return view::make('admin.developer')->with('data',$data);      
    }

    public function developer_add()
    {
      // return Input::all();
      // return Input::get('experience[0]');
      // return "hello";

       $developer=new developer;
       $developer->name=Input::get('name');
       $developer->specialty=Input::get('specialty');
       $developer->email=Input::get('email');
       $developer->website=Input::get('website');
       $developer->facebook=Input::get('facebook');
       $developer->twitter=Input::get('twitter');
       $developer->github=Input::get('github');
       $developer->linkedin=Input::get('linkedin');
       
        if(Input::hasFile('avatar')) 
       {
        $avatar=Input::file('avatar');
        $filename=time().'.'.$avatar->getClientOriginalExtension();
        $avatar->move(public_path().'/'.'img'.'/'.'developer_list'.'/',$filename);
       }

       $developer->image='img/developer_list/'.$filename;
       $developer->save();

    //   $developer_id=DB::table('developers')
      //                ->max('id');
          $developer_id=$developer->id;
       
    //   $experience_row=new developer_experience;
  
       $experience=Input::get('experience');
       $duration=Input::get('duration');
       foreach( $experience as $index => $experience )
       {
        $experience_row=new developer_experience;
        $experience_row->developer_id=$developer_id;
        $experience_row->experience=$experience;
        $experience_row->duration=$duration[$index];
        $experience_row->save();
       }

       $skill=Input::get('skill');
       foreach($skill as $skill)
       {
         $skill_row=new developer_skill;
         $skill_row->developer_id=$developer_id;
         $skill_row->skill=$skill;
         $skill_row->save();
       }

    }
    public function announcement()
    {
      $data=DB::table('announcements')
            ->get();

      return view::make('admin.announcement')->with('data',$data);      
    }

    public function announcement_add()
    {

      $announcement=new announcement;
      $announcement->title=Input::get('title');
      $announcement->content=Input::get('content');
      $announcement->date=Input::get('date');
      $announcement->save();

      $attachment=new attachment;
      $attachment->announcement_id=$announcement->id;

      if(Input::hasFile('file')) 
       {
        $file=Input::file('file');
        $filename=time().'.'.$file->getClientOriginalExtension();
        $file->move(public_path().'/'.'attachment'.'/',$filename);
       $attachment->dir='attachment/'.$filename;
        }
        else
         $attachments->dir="null";
          
       $attachment->save();

       return redirect('admin/announcement');
    }
    
    public function announcement_delete($id)
    {
        $filepath=DB::table('attachments')
                  ->where('announcement_id','=',$id)
                  ->value('dir');

        File::delete(public_path().'/'.$filepath); 

       DB::table('announcements')
           ->where('id','=',$id)
           ->delete();    

      DB::table('attachments')
           ->where('announcement_id','=',$id)
           ->delete();
      
      return redirect('admin/announcement');    
    }

    public function announcement_update_first($id)
    {
      //return $id;
       $data=DB::table('announcements')
             ->where('announcements.id','=',$id)
             ->join('attachments','attachments.announcement_id','=','announcements.id')
             ->select('announcements.id','announcements.title','announcements.content','announcements.date','attachments.dir')
             ->get();

      //  return $data;  
      //  echo $data->title;   
         
      return view::make('admin.announcement_update')->with('data',$data);       
    }

    public function announcement_update_second($id)
    {
        DB::table('announcements')
        ->where('id','=',$id)
        ->update(['title'=>Input::get('title'),'content'=>Input::get('content'),'date'=>Input::get('date')]);
       
       if(Input::hasFile('file')) 
       {
        $file=Input::file('file');
        $filename=time().'.'.$file->getClientOriginalExtension();
        $file->move(public_path().'/'.'attachment'.'/',$filename);
        $attachment->dir='attachment/'.$filename;
        
        $filepath=DB::table('attachments')
                  ->where('announcement_id','=',$id)
                  ->value('dir');
        if($filepath!="null")
        File::delete(public_path().'/'.$filepath);

        DB::table('attachments')
         ->where('announcement_id','=',$id)
         ->update(['dir'=>'attachment/'.$filename]);

        }
    }
 
    public function blog()
    {
      $data=DB::table('blogs')
            ->get();

       return view::make('admin.blog')->with('data',$data);     
    }

    public function blog_add()
    {
     // return Input::all();

      $blog=new blog;
      $blog->title=Input::get('title');
      $blog->content=Input::get('summernote');
      $blog->author=Input::get('author');
      $blog->preview=Input::get('preview');
      $blog->save();

      $tag=Input::get('tag_id');

      foreach($tag as $tag)
      {
         $tag_relation=new tag_relation;
         $tag_relation->blog_id=$blog->id;
         $tag_relation->tag_id=$tag;
         $tag_relation->save();
      }  

      return redirect('admin/blog');
    }

    public function blog_update_first($id)
    {
 
                  $data=DB::table('blogs')
            ->where('blogs.id','=',$id)
            ->join('tag_relations','tag_relations.blog_id','=','blogs.id')
            ->join('tags','tags.id','=','tag_relations.tag_id')
            ->join('developers','developers.id','=','blogs.author')

            ->select('blogs.id','blogs.title','blogs.content','blogs.created_at','blogs.preview',
                      'tags.name as tag_name' ,'tags.id as tag_id','developers.id as author_id','developers.name as author_name')                
            //->first();

         ->get();
         //return $data;
         return view::make('admin.blog_update')->with('data',$data);   

    }

    public function blog_update_second($id)
    {
    //  return Input::all();

      DB::table('blogs')
        ->where('id','=',$id)
        ->update(['title'=>Input::get('title'),'content'=>Input::get('summernote'),'author'=>Input::get('author'),'preview'=>Input::get('preview')]);

     DB::table('tag_relations')
        ->where('blog_id','=',$id)
        ->update(['tag_id'=>Input::get('tag_id')]);   
    
    return redirect('admin/blog');

    }

    public function blog_delete($id)
    {
      DB::table('blogs')
        ->where('id','=',$id)
        ->delete();

     return redirect('admin/blog');   
    }

    public function award()
    {
      $data=DB::table('awards')
       ->get();

       return view::make('admin.award')->with('data',$data);
    }

    public function award_add()
    {
        if(Input::hasFile('avatar')) 
       {
        $avatar=Input::file('avatar');
        $filename=time().'.'.$avatar->getClientOriginalExtension();
        $avatar->move(public_path().'/'.'img'.'/'.'award'.'/',$filename);

        $award=new award;
        $award->dir='img/award/'.$filename;
        $award->description=Input::get('description');
        $award->title=Input::get('title');
        $award->save();
        return redirect('/admin/award');
       }

    }

}
 