# matrix_1 = [
#     [1, 2, 3, 10], 
#     [4, 5, 6, 12], 
#     [4, 5, 3, 6]
# ]

# matrix_2 = [
#     [7, 8, 9, 19], 
#     [10, 11, 12, 22],
#     [23, 5, 3, 2]
# ]

# def matrix_addition(m_1, m_2)
#     total_rows = m_1.length 
#     sum_per_row = m_1[0].length
#     result_arr = []
#     array_count = 0
#     index_count = 0 

#     total_rows.times do 
#         row_arr = []
#         sum_per_row.times do 
#             row_arr.push(m_1[array_count][index_count] + m_2[array_count][index_count])
#             index_count += 1
#         end 
#         result_arr.push(row_arr)
#         array_count += 1
#         index_count = 0
#     end 
#     print result_arr
# end 

# # matrix_addition(matrix_1, matrix_2)


# def matrix_sub(m_1, m_2)
#     total_rows = m_1.length 
#     sum_per_row = m_1[0].length
#     result_arr = []
#     array_count = 0
#     index_count = 0 

#     total_rows.times do 
#         row_arr = []
#         sum_per_row.times do 
#             row_arr.push(m_1[array_count][index_count] - m_2[array_count][index_count])
#             index_count += 1
#         end 
#         result_arr.push(row_arr)
#         array_count += 1
#         index_count = 0
#     end 
#     print result_arr
# end 

# #matrix_sub(matrix_1, matrix_2)

matrix_3 = [[-2, 4,],
            [2, -2],
            [-2, 5]
]

matrix_4 = [[-5, 6],
            [6, 4]
]

def matrix_multi(m_1, m_2)
    total_sums = m_1.length 
    sums_per_row = m_2[0].length
    sums_per_index = m_2.length
    result_arr = []
    m1_array_count = 0
    m2_array_count = 0
    m1_index_count = 0 
    m2_index_count = 0

    total_sums.times do 
        row_arr = []
        sums_total_index = []
        sums_per_row.times do 
            sums_per_index.times do
                sums_total_index.push(m_1[m1_array_count][m1_index_count] * m_2[m2_array_count][m2_index_count])
                m1_index_count += 1
                m2_array_count += 1
            end 
            row_arr.push(sums_total_index.sum)
            m1_index_count = 0
            m2_array_count = 0
            m2_index_count += 1
            sums_total_index = []
        end
        result_arr.push(row_arr)
        m1_array_count += 1
        m2_index_count = 0
    end
    print result_arr
end 

matrix_multi(matrix_3, matrix_4)