WITH MonthlySales AS (
    SELECT 
        DATE_TRUNC('month', order_date) AS reporting_month,
        COUNT(DISTINCT order_id) AS total_orders,
        COUNT(DISTINCT customer_id) AS unique_customers,
        SUM(total_amount) AS total_revenue
    FROM 
        sales_data
    WHERE 
        status = 'completed'
    GROUP BY 
        1
),
MoM_Calculations AS (
    SELECT 
        reporting_month,
        total_orders,
        unique_customers,
        total_revenue,
        LAG(total_revenue, 1) OVER (ORDER BY reporting_month) AS previous_month_revenue
    FROM 
        MonthlySales
)
SELECT 
    reporting_month,
    total_orders,
    unique_customers,
    total_revenue,
    previous_month_revenue,
    
    ROUND(
        ((total_revenue - previous_month_revenue) / NULLIF(previous_month_revenue, 0)) * 100, 
        2
    ) AS mom_growth_percentage
FROM 
    MoM_Calculations
ORDER BY 
    reporting_month DESC;