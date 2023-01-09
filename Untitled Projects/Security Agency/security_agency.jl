# Security Agency Analysis

#using CSV, DataFrames, TypedTables, Plots, GLM
# Commision per guard 10000 on guard where 
# 10000-8500 = company benifit
# 
security_guard = 10000
Security_guard_actual_pay = 8500
total_security_guards = Security_guard_actual_pay*3
company_saves_on_security_guards = total_security_guards-(security_guard-Security_guard_actual_pay)
supervisor = 12000
area_manager = 17500
total_area_manager = area_manager*2
project_manager = 23000
CEO = 25000
df = DataFrame(name=["Mike","Tom","Robin","Kevin","Tenyson","Kenny","Ash","Michale","Danny","Ronny"],
                occupation=["Security Guard","Security Guard","Security Guard","Supervisor","Supervisor","Area Manager","Area Manager","Project Manager","Accountant","CEO"],
                salary=[8500,8500,8500,10000,10000,15000,15000,20000,20000,25000],
                company_saves=[1500,1500,1500,2000,2000,2500,2500,3000,3000,0],
                # project_site=[1,1,1,2,1,1,1,3,3],
                # site_name=[""]
                )
name = df.name
occupation = df.occupation