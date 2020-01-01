;;; artificial-light-theme.el --- Rainbow on light gray color theme.

;;; Copyright © 2020 - Kostafey <kostafey@gmail.com>

;; This file is not [yet] part of GNU Emacs, but is distributed under
;; the same terms.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; (load-theme 'artificial-light t)

;;; Code:

(deftheme artificial-light
  "Rather contrast rainbow on light gray color theme.
Basic, Font Lock, Isearch, Jabber, rst, magit, Web faces are included.")

(let* ((class '((class color) (min-colors 89)))
       ;; artificial-light misc palette colors.
       (artificial-light-bg     "#FAFAFA")
       (artificial-light-fg     "#333333")
       (artificial-light-blue   "#3f51b5") ;; "#104e8b"
       (artificial-light-teal   "#029A68") ;; "#03A16C"
       (artificial-light-green  "#208900") ;; "#007500"
       (artificial-light-white  "#FFFFFF")
       (artificial-light-gray1  "#E2E2E2")
       (artificial-light-gray2  "#777777")
       (artificial-light-gray3  "#404040")
       (artificial-light-violet "#6F00D2")
       (artificial-light-pink   "#FF1493")
       (artificial-light-yellow "#A99300")
       (artificial-light-orange "#FF8C00") ;; "#CD661D"
       (artificial-light-red    "#E65050") ;; "#CD0000"
       (artificial-light-brown  "#8B5A2B") ;; "#8b4726

       (alum-1         "#eeeeec")
       (alum-2         "#d3d7cf")
       (alum-3         "#babdb6")
       (alum-6         "#2e3436"))

  (custom-theme-set-faces
   'artificial-light
   `(default ((,class (:foreground ,artificial-light-fg :background ,artificial-light-bg))))
   `(cursor ((,class (:background ,artificial-light-fg))))
   `(hl-line ((,class (:background ,artificial-light-gray1 :inverse-video nil))))

   ;; Highlighting faces
   `(fringe ((,class (:background "#E5E5E5" :foreground "gray40"))))
   `(highlight ((,class (:background ,alum-1))))
   `(region ((,class (:foreground ,artificial-light-fg :background ,"#EEEEA0"))))
   `(cua-rectangle ((,class (:foreground ,artificial-light-fg :background ,"#BFFF00"))))
   `(isearch ((,class (:foreground ,artificial-light-fg :background "yellow" :inverse-video nil))))
   `(lazy-highlight ((,class (:background "#DDEE00" :inverse-video nil))))
   `(trailing-whitespace ((,class (:background ,artificial-light-red))))

   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
                              :background ,alum-2 :foreground ,alum-6))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
                                       :background ,alum-1 :foreground ,alum-6))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,artificial-light-blue))))
   `(escape-glyph ((,class (:foreground ,artificial-light-teal))))
   `(error ((,class (:foreground ,artificial-light-red))))
   `(warning ((,class (:foreground ,artificial-light-orange))))
   `(success ((,class (:foreground ,artificial-light-teal))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,artificial-light-blue))))
   `(font-lock-comment-face ((,class (:foreground ,artificial-light-gray2))))
   `(font-lock-constant-face ((,class (:foreground ,artificial-light-blue))))
   `(font-lock-function-name-face ((,class (:foreground ,artificial-light-teal))))
   `(font-lock-keyword-face ((,class (:foreground ,artificial-light-violet))))
   `(font-lock-string-face ((t (:foreground ,artificial-light-green))) t)
   `(font-lock-type-face ((t (:foreground ,artificial-light-teal))))
   `(font-lock-variable-name-face ((,class (:foreground ,artificial-light-yellow))))
   `(font-lock-warning-face ((,class (:foreground ,artificial-light-red :weight bold))))

   ;; tabbar
   `(tabbar-modified ((t (:inherit tabbar-default :foreground "#118811"
                          :bold t
                          :box (:line-width 1 :color "white"
                                :style released-button)))))
   `(tabbar-selected ((t :inherit tabbar-default
                         :box (:line-width 1 :color "white" :style pressed-button)
                         :foreground ,alum-6 :bold t)))
   `(tabbar-selected-modified ((t :inherit tabbar-selected)))

   ;;Highlight pair parentheses
   `(show-paren-match ((t (:background "#F0F0A1"))))
   `(show-paren-mismatch ((t (:background ,artificial-light-red))))

   ;; git-gutter
   '(git-gutter:added ((t (:foreground "#339933"))) t)
   `(git-gutter:deleted ((t (:foreground "#cc0000"))) t)
   '(git-gutter:modified ((t (:foreground "DodgerBlue3"))) t)

   `(git-gutter-fr:added ((t (:foreground "PaleGreen3" :background "PaleGreen3"))) t)
   `(git-gutter-fr:deleted ((t (:foreground "tomato1" :background "tomato1"))) t)
   `(git-gutter-fr:modified ((t (:foreground "LightSkyBlue3" :background "LightSkyBlue3"))) t)

   ;; rainbow-delimiters
   ;; (1 (2 (3 (4 (5 (6 (7 (8 (9 (10 (11 (12))))))))))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,artificial-light-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,artificial-light-violet))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,artificial-light-blue))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,artificial-light-teal))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,artificial-light-pink))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,artificial-light-yellow))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,artificial-light-orange))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,artificial-light-green))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,artificial-light-brown))))
   ))

(custom-theme-set-variables
 'artificial-light

 ;; lisp parentheses rainbow
 `(hl-paren-colors '("#326B6B"))
 `(hl-paren-background-colors
   '("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC"
     "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00"))

 ;; fill-column-indicator
 `(fci-rule-color "gray80")

 ;; marker
 `(highlight-symbol-colors
   '("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA"
     "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F"))

 ;; org-mode code blocks
 `(org-src-block-faces '(("emacs-lisp" (:background "#F0FFF0"))
                         ("dot" (:foreground "gray50")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'artificial-light)

;;; artificial-light-theme.el ends here
