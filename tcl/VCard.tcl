proc VCard {} {
	set newNode [stack 0]
#	if {[class $newNode] != "ReadGeo2"} {
#		message "Select a ReadGeo node first"
#		return
#		}
	addUserKnob node $newNode 20 "" VCard
	addUserKnob node $newNode 32 "" label "create card" T "set vPos \[lindex \[ObjVPos \[value this.file]] \[value this.vNum]]\nif \{\$vPos == \"\"\} \{alert \"no vertex with number \[value this.vNum] found\"; return\}\nCard -New\nTransformGeo \{\}\nset newNode \[stack 0]\nknob \$newNode.translate \$vPos"
	addUserKnob node $newNode 3 vNum label "vertex number"

	}