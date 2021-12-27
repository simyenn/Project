package com.example.yeeun

import androidx.appcompat.app.AppCompatActivity
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.Toast

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        supportActionBar!!.setDisplayShowHomeEnabled(true)
        supportActionBar!!.setIcon(R.drawable.ic_launcher)
        title = "음식 선호도 투표 !!"

        val voteCount = IntArray(9)
        for (i in 0..8)
            voteCount[i] = 0
        // 9개의 이미지 버튼 객체배열
        val image = arrayOfNulls<ImageView>(9)
        // 9개의 이미지버튼 ID 배열
        val imageId = arrayOf(R.id.iv1, R.id.iv2, R.id.iv3, R.id.iv4, R.id.iv5, R.id.iv6, R.id.iv7, R.id.iv8, R.id.iv9)

        val imgName = arrayOf("햄버거", "치킨", "탕수육", "닭강정", "피자", "닭가슴살", "국밥", "마라탕", "삼겹살")

        for (i in imageId.indices) {
            image[i] = findViewById<View>(imageId[i]) as ImageView
            image[i]?.setOnClickListener(View.OnClickListener {
                // 투표수 증가.
                voteCount[i]++
                Toast.makeText(applicationContext,
                    imgName[i] + ": 총 " + voteCount[i] + " 표",
                    Toast.LENGTH_SHORT).show()
            })
        }

        val btnFinish = findViewById<View>(R.id.btnResult) as Button
        btnFinish.setOnClickListener {
            val intent = Intent(applicationContext,
                ResultActivity::class.java)
            intent.putExtra("VoteCount", voteCount)
            intent.putExtra("ImageName", imgName)
            startActivity(intent)
        }

    }

}
