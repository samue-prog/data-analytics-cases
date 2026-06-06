-- OBJECTIVE: Identify potential duplicate payments made to the same vendor 
-- with the same amount within a 24-hour window.

SELECT 
    vendor_id,
    invoice_amount,
    invoice_date,
    COUNT(*) as duplicate_count,
    GROUP_CONCAT(invoice_number) as related_invoices
FROM 
    accounts_payable_table
WHERE 
    payment_status = 'PAID'
    AND invoice_date > '2023-01-01'
GROUP BY 
    vendor_id, 
    invoice_amount, 
    CAST(invoice_date AS DATE)
HAVING 
    COUNT(*) > 1
ORDER BY 
    invoice_amount DESC;

-- WHY THIS MATTERS: Duplicate payments are a common source of financial loss. 
-- In a forensic audit, this query identifies system errors or intentional fraud 
-- where a vendor is paid twice for the same service.
