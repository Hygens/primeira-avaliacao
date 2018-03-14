class PriEval
  def solve(x,n)    
    if (x+1)%35 == 0 and (x+1)==n
      return "Nama Team" 
    elsif (x+1)%35==0 
      return "Nama Team, " 
    elsif (x+1)%5 == 0 and (x+1)==n
      return "Nama" 
    elsif (x+1)%5 == 0 
      return "Nama, "   
    elsif (x+1)%7 == 0 and (x+1)==n  
      return "Team"       
    elsif (x+1)%7 == 0 
      return "Team, "        
    elsif (x+1)!=n
      return (x+1).to_s+", "
    else
      return (x+1) .to_s
    end    
  end
  def process(n)
    s = ""
    n.times{ |x| s += solve(x,n) }
    return s 
  end
  def valid(n)
    if n != nil and n.to_i > 0    
      return process(n)
    else
      return "Please entry positive number starting from 1(one)!"   
    end  
  end
end

n = Integer(gets) rescue nil
puts PriEval.new.valid(n)
