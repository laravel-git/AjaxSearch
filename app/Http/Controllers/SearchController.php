<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;
use DB;


class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $customers = Customer::all();
        return view('search.search',['customers'=>$customers]);
    }

    public function search(Request $request){
        if ($request->ajax()){
            $output = "";
               $customers = DB::table('customers')->where ('firstname','LIKE',$request->search.'%')->
                   orWhere('lastname','LIKE',$request->search.'%')->get();
               if($customers){
                   foreach ($customers as $customer){
                       $output .= '<tr>'.
                           '<td>'.$customer->id.'</td>'.
                           '<td>'.$customer->firstname.'</td>'.
                           '<td>'.$customer->lastname.'</td>'.
                           '<td>'.$customer->email.'</td>'.
                           '<td>'.$customer->phone.'</td>'.
                           '</tr>';
                   }
                   return Response($output);
               }else {
                   $output .= '<tr>'.
                       '<td>'.'Not Found'.'</td>'.
                       '</tr>';
                   return Response($output);
               }
        }
    }


}
