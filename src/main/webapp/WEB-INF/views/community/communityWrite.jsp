<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="community-section section">
    <div class="hero-body">
        <div class="container is-max-desktop">
            <div class="community-padding card ml-0 mr-0 mb-6">
                <div class="control mb-5">
                    <input class="input" type="text" placeholder="제목을 입력해 주세요.">
                </div>
                <div class="control mb-5">
                    <textarea class="community-textarea textarea" placeholder="내용을 작성해 주세요." style="resize: none; height:60vh"></textarea>
                </div>
                <p class="is-size-7 mb-2">*최대 업로드 파일 크기: 10MB</p>
                <div id="file-js-example" class="file has-name mb-4  pb-3">
                    <label class="file-label">
                        <input class="file-input" type="file" name="resume">
                        <span class="file-cta">
                      <span class="file-icon">
                        <ion-icon name="cloud-upload-outline"></ion-icon>
                      </span>
                      <span class="file-label">
                        파일 선택
                      </span>
                    </span>
                        <span class="file-name">
                      이미지 파일을 올려주세요.
                    </span>
                    </label>
                </div>
                <div class="has-text-centered">
                    <button class="button is-link is-rounded mr-3">등록하기</button>
                    <button class="button is-light is-rounded">취소하기</button>
                </div>
            </div>


        </div>
    </div>
</section>

<script>
    const fileInput = document.querySelector('#file-js-example input[type=file]');
    fileInput.onchange = () => {
        if (fileInput.files.length > 0) {
            const fileName = document.querySelector('#file-js-example .file-name');
            fileName.textContent = fileInput.files[0].name;
        }
    }
</script>