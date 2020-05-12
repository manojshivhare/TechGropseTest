/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Comment : Codable {
	let comment_id : String?
	let ec_event_id : String?
	let ec_user_id : String?
	let ec_comment : String?
	let ec_status : String?
	let ec_created_at : String?
	let u_name : String?
	let u_image : String?

	enum CodingKeys: String, CodingKey {

		case comment_id = "comment_id"
		case ec_event_id = "ec_event_id"
		case ec_user_id = "ec_user_id"
		case ec_comment = "ec_comment"
		case ec_status = "ec_status"
		case ec_created_at = "ec_created_at"
		case u_name = "u_name"
		case u_image = "u_image"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		comment_id = try values.decodeIfPresent(String.self, forKey: .comment_id)
		ec_event_id = try values.decodeIfPresent(String.self, forKey: .ec_event_id)
		ec_user_id = try values.decodeIfPresent(String.self, forKey: .ec_user_id)
		ec_comment = try values.decodeIfPresent(String.self, forKey: .ec_comment)
		ec_status = try values.decodeIfPresent(String.self, forKey: .ec_status)
		ec_created_at = try values.decodeIfPresent(String.self, forKey: .ec_created_at)
		u_name = try values.decodeIfPresent(String.self, forKey: .u_name)
		u_image = try values.decodeIfPresent(String.self, forKey: .u_image)
	}

}