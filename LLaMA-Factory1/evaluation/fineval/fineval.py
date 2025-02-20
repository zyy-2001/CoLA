# Copyright 2020 The HuggingFace Datasets Authors and the current dataset script contributor.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os

import datasets
import pandas as pd


_CITATION = """\
@misc{2308.09975,
Author = {Liwen Zhang and Weige Cai and Zhaowei Liu and Zhi Yang and Wei Dai and Yujie Liao and Qianru Qin and Yifei Li and Xingyu Liu and Zhiqiang Liu and Zhoufan Zhu and Anbo Wu and Xin Guo and Yun Chen},
Title = {FinEval: A Chinese Financial Domain Knowledge Evaluation Benchmark for Large Language Models},
Year = {2023},
Eprint = {arXiv:2308.09975},
}
"""

_DESCRIPTION = """\
FinEval, a benchmark for evaluating financial domain knowledge in LLMs, is based on quantitative foundational methods. It consists of 8,351 question types that closely align with real-world application scenarios, including multiple-choice questions, subjective open-ended questions and objective short-answer questions, reasoning planning, and retrieval-based QA.
"""

_HOMEPAGE = "https://huggingface.co/datasets/FinGPT/fingpt-fineval"

_LICENSE = "Apache License"


task_list = [
    "accounting_exam",
    "actuary_examination",
    "advanced_financial_accounting_examination",
    "auditing_examination",
    "banking_qualification_examination",
    "central_banking_exam",
    "commercial_bank_finance_exam",
    "corporate_finance_exam",
    "corporate_strategy_and_risk_management_exam",
    "cost_accounting_examination",
    "CPA_examination",
    "econometrics_exam",
    "economic_law_examination",
    "finance_exam",
    "financial_engineering_exam",
    "financial_management_examination",
    "financial_markets_exam",
    "fund_practitioner_qualification_examination",
    "futures_practitioner_qualification_examination",
    "insurance_examination",
    "intermediate_financial_accounting_examination",
    "international_economics_exam",
    "international_finance_exam",
    "investment_exam",
    "macroeconomics_exam",
    "management_accounting_examination",
    "microeconomics_exam",
    "monetary_and_financial_examination",
    "political_economics_exam",
    "securities_practitioner_qualification_examination",
    "statistics_exam",
    "tax_law_examination",
]


class FinEvalConfig(datasets.BuilderConfig):
    def __init__(self, **kwargs):
        super().__init__(version=datasets.Version("1.0.0"), **kwargs)


class FinEval(datasets.GeneratorBasedBuilder):
    BUILDER_CONFIGS = [
        FinEvalConfig(
            name=task_name,
        )
        for task_name in task_list
    ]

    def _info(self):
        features = datasets.Features(
            {
                "question": datasets.Value("string"),
                "A": datasets.Value("string"),
                "B": datasets.Value("string"),
                "C": datasets.Value("string"),
                "D": datasets.Value("string"),
                "answer": datasets.Value("string"),
                "explanation": datasets.Value("string"),
            }
        )
        return datasets.DatasetInfo(
            description=_DESCRIPTION,
            features=features,
            homepage=_HOMEPAGE,
            license=_LICENSE,
            citation=_CITATION,
        )

    def _split_generators(self, dl_manager):
        data_dir = "."
        task_name = self.config.name
        return [
            datasets.SplitGenerator(
                name=datasets.Split.TEST,
                gen_kwargs={
                    "filepath": os.path.join(data_dir, "test", f"{task_name}.csv"),
                },
            ),
            datasets.SplitGenerator(
                name=datasets.Split.TRAIN,
                gen_kwargs={
                    "filepath": os.path.join(data_dir, "test", f"{task_name}.csv"),
                },
            ),
        ]


    def _generate_examples(self, filepath):
        df = pd.read_csv(filepath, encoding="utf-8")
        for i, instance in enumerate(df.to_dict(orient="records")):
            if "answer" not in instance.keys():
                instance["answer"] = ""
            if "explanation" not in instance.keys():
                instance["explanation"] = ""
            yield i, instance