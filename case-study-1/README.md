# Case Study 1: Detecting "Ghost Vendors" in Procurement

### 🚩 Scenario
The internal audit team suspected that a former employee was still receiving payments through a fake (ghost) vendor account.

### 🔍 My Approach
1. **Data Cleaning:** Pulled 2 years of vendor master data and payment history.
2. **Analysis:** Used SQL to join employee address records with vendor address records to find matches.
3. **Findings:** Identified 3 vendors that shared a bank account number with a recently terminated employee.

### 🛠️ Tools Used
- **SQL:** For cross-referencing datasets.
- **Tableau/PowerBI:** To visualize the timeline of payments vs. the employee's termination date.

### 📈 Result
Recovery of $15,000 in unauthorized payments and a recommendation to strengthen HR-to-Finance system integration.
