/*
 * The Apache Software License, Version 1.1
 *
 *
 * Copyright (c) 2001 The Apache Software Foundation.  All rights
 * reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. The end-user documentation included with the redistribution,
 *    if any, must include the following acknowledgment:
 *       "This product includes software developed by the
 *        Apache Software Foundation (http://www.apache.org/)."
 *    Alternately, this acknowledgment may appear in the software itself,
 *    if and wherever such third-party acknowledgments normally appear.
 *
 * 4. The names "Axis" and "Apache Software Foundation" must
 *    not be used to endorse or promote products derived from this
 *    software without prior written permission. For written
 *    permission, please contact apache@apache.org.
 *
 * 5. Products derived from this software may not be called "Apache",
 *    nor may "Apache" appear in their name, without prior written
 *    permission of the Apache Software Foundation.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of the Apache Software Foundation.  For more
 * information on the Apache Software Foundation, please see
 * <http://www.apache.org/>.
 */

package samples.echo;

/**
 * @author Simon Fell <simon@zaks.demon.co.uk>
 */

public class SOAPArrayStruct implements java.io.Serializable {
    private java.lang.String varString;
    private int varInt;
    private float varFloat;
    private java.lang.String[] varArray;

    public SOAPArrayStruct() {
    }

    public SOAPArrayStruct( java.lang.String varString, 
                            int varInt, 
                            float varFloat, 
                            java.lang.String[] varArray) {
        this.varString = varString;
        this.varInt = varInt;
        this.varFloat = varFloat;
        this.varArray = varArray;
    }

    public java.lang.String getVarString() {
        return varString;
    }

    public void setVarString(java.lang.String varString) {
        this.varString = varString;
    }

    public int getVarInt() {
        return varInt;
    }

    public void setVarInt(int varInt) {
        this.varInt = varInt;
    }

    public float getVarFloat() {
        return varFloat;
    }

    public void setVarFloat(float varFloat) {
        this.varFloat = varFloat;
    }

    public java.lang.String[] getVarArray() {
        return varArray;
    }

    public void setVarArray(java.lang.String[] varArray) {
        this.varArray = varArray;
    }

    /**
     * Equality comparison.  
     */
    public boolean equals(Object object) {
        if (!(object instanceof SOAPArrayStruct)) return false;

        SOAPArrayStruct that= (SOAPArrayStruct) object;

        if (this.varInt != that.varInt) return false;
        if (this.varFloat != that.varFloat) return false;

        if (this.varString == null) {
            if (that.varString != null) return false;
        } else {
            if (!this.varString.equals(that.varString)) return false;
        }

        if (this.varArray == null) {
            if (that.varArray != null) return false;
        } else if (this.varArray.length != that.varArray.length) {
            return false;
        } else {
            for (int i=0; i <this.varArray.length; i++) {
                if (this.varArray[i] == null) {
                    if (that.varArray[i] != null) {
                        return false;
                    }
                } else if (!this.varArray[i].equals(that.varArray[i])) {
                    return false;
                }
            }                    
        }
        
        return true;
    };

    /**
     * Printable representation
     */
    public String toString() {
        return "{" + varInt + ", \"" + varString + "\", " + varFloat + ", " + varArray +"}";
    }
}
