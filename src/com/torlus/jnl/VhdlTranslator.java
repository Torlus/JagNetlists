package com.torlus.jnl;

import java.util.Collection;

public class VhdlTranslator {
	private Workspace ws;
	private String dir;
	
	public VhdlTranslator(Workspace ws, String dir) {
		this.ws = ws;
		this.dir = dir;
	}

	public void generate() {
		generate(ws.entities);
	}
	
	public void generate(Collection<Entity> entities) {
		for(Entity e : entities) {
			if (e instanceof CompositeEntity) {
				System.out.println("#################### Processing CompositeEntity " + e.getBaseName());
				
				String vhdl = "";
				vhdl += "entity " + e.getBaseName() + " is\n" + "port(\n";
				vhdl += e.vhdlIoDecl();
				vhdl += ");\n" + "end entity;\n\n";

				vhdl += "architecture rtl of " + e.getBaseName() + " is\n\n";
				CompositeEntity ce = (CompositeEntity)e;
				
				vhdl += ce.vhdlLocalDecl();
				vhdl += ce.vhdlBufferDecl();
				
				vhdl += "begin\n";
				vhdl += ce.vhdlBufferWires();
				
				for(int i = 0; i < ce.instances.size(); i++) {
					vhdl += ce.instances.get(i).vhdlInstance();
				}
				
				vhdl += "end architecture;\n";
				
				System.out.println(vhdl);
				
			}
		}
	}
	
}
