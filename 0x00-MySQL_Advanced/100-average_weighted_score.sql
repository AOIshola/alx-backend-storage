-- creates a stored procedure ComputeAverageWeightedScoreForUser
-- that computes and store the average weighted score for a student
DELIMITER $$

CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
    DECLARE total_score FLOAT;
    DECLARE total_weight INT;
    DECLARE weighted_average FLOAT;

    -- Calculate total_score and total_weight using a subquery
    SELECT SUM(c.score * p.weight), SUM(p.weight)
    INTO total_score, total_weight
    FROM corrections c
    INNER JOIN projects p ON c.project_id = p.id
    WHERE c.user_id = user_id;

    -- Calculate the weighted average score
    IF total_weight > 0 THEN
        SET weighted_average = total_score / total_weight;
    ELSE
        SET weighted_average = 0;
    END IF;

    -- Update the users table with the computed average score
    UPDATE users
    SET average_score = weighted_average
    WHERE id = user_id;
END $$
