import numpy as np
import time
import multiprocessing


class ProcessDesc:
    def __init__(self, function, args):
        self.function = function
        self.args = args


# Prints the loading bar of completed processes
def print_loading_bar(iteration: int, total: int, start_time: time, length: int = 50):
    percent = ("{0:.1f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = "█" * filled_length + "-" * (length - filled_length)
    elapsed_time = time.time() - start_time
    print(f"\rProgress: |{bar}| {percent}% Complete {elapsed_time:.2f}s")


def process_function(input):
    a, b = input
    return (a + b,)


def process_function_2(input):
    a, b = input
    return (a - b,)


class PoolWrapper:
    def __init__(self, max_processes=multiprocessing.cpu_count()):
        self._max_processes = max_processes
        self._results = []
        self._registered_processes = []

    def register_process(self, function, args):
        self._registered_processes.append(ProcessDesc(function, args))

    def start_pool(self):
        raw_results = []
        pool = multiprocessing.Pool(processes=self._max_processes)
        self._start_time = time.time()

        for process_desc in self._registered_processes:
            process_result = pool.apply_async(
                process_desc.function, (process_desc.args,)
            )
            raw_results.append(process_result)
        pool.close()
        # Processes are running
        last_results_len = -1
        while True:
            results_len = sum(1 for r in raw_results if r.ready())
            if results_len != last_results_len:
                last_results_len = results_len
                print_loading_bar(
                    last_results_len, len(self._registered_processes), self._start_time
                )
                if last_results_len == len(self._registered_processes):
                    break
            time.sleep(1)

        pool.join()
        self._results = [result.get() for result in raw_results]
        return self._results

    def get_results(self):
        return self._results


# if __name__ == "__main__":

#     pool_wrapper = PoolWrapper()
#     pool_wrapper.register_process(process_function, (1, 1))
#     pool_wrapper.register_process(process_function_2, (1, 1))
#     pool_wrapper.register_process(process_function, (2, 3))
#     pool_wrapper.register_process(process_function_2, (6, 9))

#     results = pool_wrapper.start_pool()
#     print(results)
