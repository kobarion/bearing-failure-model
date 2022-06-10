import pandas as pd
from typing import List
from tempfile import NamedTemporaryFile


def bulk_insert_df(
    conn,
    df: pd.DataFrame, 
    table: str
) -> None:
    '''Insert dataframe into postgres table.'''
    with NamedTemporaryFile() as tmp:
        df.to_csv(f'{tmp.name}.csv', sep='|', index=False)

        cursor = conn.cursor()

        with open(f'{tmp.name}.csv', 'r') as f:
            next(f)
            cursor.copy_from(f, table, sep='|', null='')

        conn.commit()   
        cursor.close()


def reset_table(conn, table: str) -> None:
    '''Drops all rows from table. Not recommended without double checking.'''
    cursor = conn.cursor()

    sql = f"DELETE FROM {table}"
    cursor.execute(sql)
    conn.commit()

    cursor.close()


def query_data(conn, sql: str) -> list:
    '''Execute any sql strings queries.'''
    cursor = conn.cursor()
    cursor.execute(sql)
    data = cursor.fetchall()
    conn.commit()
    cursor.close()
    return data


def delete_query(conn, sql: str) -> None:
    '''Execute any sql string delete query.'''
    cursor = conn.cursor()
    cursor.execute(sql)
    conn.commit()
    cursor.close()
