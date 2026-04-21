BEGIN;

WITH passage_updates AS (
    SELECT *
    FROM (VALUES
        ('The Missing Pencil', $$When Kezia reached into her pencil case, she found that her favorite pencil was missing. She felt a flutter of anxiety. But then, she remembered that she let her neighbor borrow it earlier that day. She calmly walked over and asked her neighbor for it back. When her neighbor returned it with a smile, Kezia felt a wave of relief and was glad that she had spoken up.$$),
        ('A Rainy Day', $$The whole class had been excited for outdoor recess, but it started raining right before lunch. Many students groaned. Amara felt disappointed too, but then she had an idea: she asked her teacher if the class could play a quiet game inside. They played a guessing game and ended up having lots of fun inside.$$),
        ('The Fair Turn', $$Layla had been waiting a long time to use the classroom computer, but when it was finally her turn, she saw that her friend Demi also had not had a chance yet. Layla knew how much Demi needed to finish up a project. She decided to offer Demi five minutes of her computer time. Demi was grateful, and Layla felt proud of herself.$$),
        ('Speaking Up', $$During group work, Imani noticed that her idea was being ignored. She felt scared to repeat herself but also frustrated that no one had listened. She took a breath and said, 'I have an idea that we did not get to discuss yet.' Everyone paused and listened. Her idea was considered after all. Imani learned that speaking up, even when it felt hard, was worth it.$$),
        ('Keeping a Promise', $$Dev's teacher had a big surprise for the class: a pizza party on Friday. She told Dev early because he was helping set it up and she made him promise not to say a word. All week his classmates kept asking if anything special was happening. Dev remembered his promise so he just smiled and said, “I can't say.” When the pizza boxes showed up, everyone went crazy. His teacher was very proud of Dev for keeping his promise.$$),
        ('Different Ways to Learn', $$Marcus was having trouble memorizing his spelling list. But then, he noticed that when he said them out loud while walking, they stuck in his brain. He realized that he had found his own learning style and that felt like a real discovery.$$),
        ('A Mistake in Class', $$Lily was taking notes from the board but then she realized that she had copied down the wrong numbers. Her whole row was wrong. At first, she felt embarrassed to speak up in front of her class. However, she still raised her hand and asked her teacher for help. Her teacher helped her fix the notes and said, "It takes courage to speak up." Lily felt proud because she did not give up when things went wrong.$$),
        ('When It''s Hard to Focus', $$Evan had a lot of energy and found it hard to sit still during long reading blocks. He would tap his pencil, wiggle in his seat, and sometimes lose track of the page. One day, his teacher showed him how to rest his finger on each line as he read. He also started taking a slow breath before he turned each page. Slowly, he noticed he could follow the story better. He figured out that focus was about giving himself a small anchor.$$),
        ('Changing the Plan', $$The class was supposed to visit the science museum, but the bus broke down at the last minute and the trip was cancelled. Many students were sad. Priya was disappointed too, but she tried to think about what they could still do. When her teacher asked for ideas, she suggested they build museum exhibits in class using cardboard and tape. The class ended up making a whole mini-museum by the end of the day, and their teacher was proud of Priya for her creative idea.$$),
        ('Standing Up for a Friend', $$Some people made fun of how Theo ran during gym class. Theo laughed along, but Nia could see it wasn't a real laugh. Nia spoke up and said, 'I don't think it was that funny.' Many people apologized to Theo. Later, Theo found Nia and said quietly, 'Thanks for saying something.' Nia was glad that she had done what mattered and was able to stand up for a friend.$$),
        ('A Pattern I Noticed in Myself', $$Rosa noticed that once her paint brush hit the paper, ideas just came. She shared this with her class during a reflection activity, and her teacher said, "That is really good self-knowledge, Rosa." Rosa had never thought about it that way before. Knowing how she worked best helped her stop waiting for the perfect idea and just begin. Rosa realized that paying attention to yourself was its own kind of learning.$$),
        ('Saying No Kindly', $$Bianca's friend asked her to share answers on an independent worksheet. Bianca knew that sharing wouldn't be right. She said, 'I can't share mine, but I can help you think the questions through.' Her friend looked confused for a moment but then nodded. Later, when Bianca explained a few things, her friend figured out the rest on her own. She then also thanked Bianca. Bianca learned that a kind 'no' could protect a friendship and also end up helping.$$),
        ('When the Rules Don''t Seem Fair', $$The whole class had to miss recess because two students had been talking during a test. Jake thought this was unfair since he hadn't done anything wrong. He raised his hand calmly and asked the teacher why the whole class had been affected. His teacher explained that she wanted everyone to remember the rule together. Jake would eventually understand and was glad that he cleared it up.$$),
        ('Taking Care of Someone Else''s Feelings', $$Nora's little brother came home from school upset because he had been left out of a game at recess. He wouldn't talk and just sat in the corner. Nora felt a little impatient at first but then sat down next to him. She didn't say "it's not a big deal" because she could tell it felt like a big deal to him. Instead, she said, "That sounds really hard." Her brother leaned against her. Nora realized that sometimes the most caring thing you can do is just stay, without trying to fix anything.$$),
        ('A Long Wait', $$Theo's class was saving up to buy a new aquarium for the classroom. Each week, they put in a little bit more money. Some kids wanted to spend the money earlier on something else, but the teacher encouraged everyone to remember that saving big would be worth it. Week by week, the jar filled up. In the end, the class was rewarded big. Everyone realized that when you work together and stick to a plan, the reward feels even better.$$),
        ('Changing How I Think About Mistakes', $$Tomás had worked hard on making slides for a group science project. When he presented his work, his partner Amara suggested reorganizing the order of the slides so the audience would understand better. Tomás was hesitant at first to change his work. But he paused and actually listened to Amara's reasoning. He told Amara, "I hear you and let’s continue making our project better." After making edits as a group, Tomás realized that teamwork could make something better than building on your own.$$),
        ('The Group Decides Together', $$The class needed to choose one book to read aloud for the month. Everyone had a different favorite. Instead of the teacher picking, she asked the class to each make a short case for their book. Milo argued for his book by telling them the best part about it, without spoiling it. Others did the same. After everyone was done, the class took a vote. When the vote was over, Milo's book didn't win. However, Milo understood that when everyone gets a voice, the decision belongs to the whole group.$$
        )
    ) AS v(lesson_name, new_passage)
),

updated_lesson_content AS (
    UPDATE bantrly.lesson_content lc
    SET 
        content_value = pu.new_passage,
        updated_at = NOW()
    FROM bantrly.lesson l
    JOIN passage_updates pu
        ON pu.lesson_name = l.lesson_name
    WHERE lc.lesson_id = l.lesson_id
      AND lc.content_key = 'passage'
    RETURNING l.lesson_name
),

updated_lesson_version AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
            lvn.content::jsonb,
            '{contents,0,content_value}',
            to_jsonb(pu.new_passage)
        )
    FROM bantrly.lesson l
    JOIN passage_updates pu
        ON pu.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
    RETURNING l.title
)

SELECT 
    (SELECT COUNT(*) FROM updated_lesson_content) AS lesson_content_updated,
    (SELECT COUNT(*) FROM updated_lesson_version) AS lesson_version_updated;

COMMIT;