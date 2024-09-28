module ApplicationHelper
  def sorting(column, title)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    arrow = column == sort_column ? (sort_direction == "asc" ? " &#x2191;" : " &#x2193;") : ""
    title = title + arrow
    link_to title.html_safe, {sort: column, direction: direction}, {class: "table-header"}
  end

  def highlighted(column)
    css_class = "default"
    if (sort_column == column)
      css_class = sort_direction == "asc" ? "col-asc" : "col-desc"
    end
    css_class
  end
end
