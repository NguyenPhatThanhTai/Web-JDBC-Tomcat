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

package samples.echo ;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;

import org.apache.axis.encoding.Hex;
import javax.xml.rpc.ParameterMode;
import javax.xml.rpc.namespace.QName;

/**
 * Test implementation of the echo interop service.  Original description of
 * this was found at http://www.xmethods.net/ilab/ .  The current definition
 * can be found at http://www.whitemesa.com/interop.htm .
 *
 * @author Sam Ruby <rubys@us.ibm.com>
 * @author Simon Fell <simon@zaks.demon.co.uk>
 */

public class EchoService implements org.apache.axis.wsdl.Skeleton {

    private static org.apache.axis.wsdl.SkeletonImpl skel = null;
    
    public EchoService() {
        init() ;
    }
    
    public QName getParameterName(String opName, int i) {
        return skel.getParameterName(opName, i);
    }

    public static QName getParameterNameStatic(String opName, int i) {
        init();
        return skel.getParameterName(opName, i);
    }

    public ParameterMode getParameterMode(String opName, int i) {
        return skel.getParameterMode(opName, i);
    }

    public static ParameterMode getParameterModeStatic(String opName, int i) {
        init();
        return skel.getParameterMode(opName, i);
    }

    protected static void init() {
        if (skel != null) 
            return;
        skel = new org.apache.axis.wsdl.SkeletonImpl();
        skel.add("echoString",
                 new String[] {
                     "return",
                     "inputString"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoStringArray",
                 new String[] {
                     "return",
                     "inputStringArray"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoInteger",
                 new String[] {
                     "return",
                     "inputInteger"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoIntegerArray",
                 new String[] {
                     "return",
                     "inputIntegerArray"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoFloat",
                 new String[] {
                     "return",
                     "inputFloat"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoFloatArray",
                 new String[] {
                     "return",
                     "inputFloatArray"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoStruct",
                 new String[] {
                     "return",
                     "inputStruct"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoStructArray",
                 new String[] {
                     "return",
                     "inputStructArray"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoVoid",
                 new String[] {
                 },
                 new ParameterMode[] {}, null, null, null);
        skel.add("echoBase64",
                 new String[] {
                     "return",
                     "inputBase64"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoHexBinary",
                 new String[] {
                     "return",
                     "inputHexBinary"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoDate",
                 new String[] {
                     "return",
                     "inputDate"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoDecimal",
                 new String[] {
                     "return",
                     "inputDecimal"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoBoolean",
                 new String[] {
                     "return",
                     "inputBoolean"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoMap",
                 new String[] {
                     "return",
                     "inputMap"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoMapArray",
                 new String[] {
                     "return",
                     "inputMapArray"
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoStructAsSimpleTypes",
                 new String[] {
                 null,
                 "inputStruct",
                 "outputString",
                 "outputInteger",
                 "outputFloat",
                 },
                 new ParameterMode[] {
                     null,
                     ParameterMode.PARAM_MODE_IN,                     
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_OUT,
                 }, null, null, null);
        skel.add("echoSimpleTypesAsStruct",
                 new String[] {
                 "return",
                 "inputString",
                 "inputInteger",
                 "inputFloat",
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN,                     
                     ParameterMode.PARAM_MODE_IN,                     
                     ParameterMode.PARAM_MODE_IN,                     
                 }, null, null, null);
        skel.add("echo2DStringArray",
                 new String[] {
                 "return",
                 "input2DStringArray",
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoNestedStruct",
                 new String[] {
                 "return",
                 "inputStruct",
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
        skel.add("echoNestedArray",
                 new String[] {
                 "return",
                 "inputStruct",
                 },
                 new ParameterMode[] {
                     ParameterMode.PARAM_MODE_OUT,
                     ParameterMode.PARAM_MODE_IN                     
                 }, null, null, null);
    }
    
    /**
     * This method accepts a single string and echoes it back to the client.
     */
    public String echoString(String input) {
        return input;    
    }

    /**
     * This method accepts an array of strings and echoes it back to the client.
     */
    public String[] echoStringArray(String[] input) {
        return input;
    }
    
    /**
     * This method accepts an single integer and echoes it back to the client.
     */
    public Integer echoInteger(Integer input) {
        return input;
    }

    /**
     * This method accepts an array of integers and echoes it back to the 
     * client.
     */
    public int[] echoIntegerArray(int[] input) {
        return input;
    }

    /**
     * This method accepts a single float and echoes it back to the client.
     */
    public Float echoFloat(Float input) {
        return input;
    }

    /**
     * This method accepts an array of floats and echoes it back to the client.
     */
    public float[] echoFloatArray(float[] input) {
        return input;
    }

    /**
     * This method accepts a single structure and echoes it back to the 
     * client.  
     */
    public SOAPStruct echoStruct(SOAPStruct input) {
        return input;
    }

    /**
     * This method accepts an array of structures and echoes it back to the 
     * client.  The structure used is the same defined in the description of 
     * the "echoStruct" method.
     */
    public SOAPStruct[] echoStructArray(SOAPStruct[] input) {
        return input;
    }

    /**
     * This method exists to test the "void" return case.  It accepts no 
     * arguments, and returns no arguments.
     */
    public void echoVoid() {
    }

    /**
     * This methods accepts a binary object and echoes it back to the client.
     */
    public byte[] echoBase64(byte[] input) {
        return input;
    }

    /**
     * This methods accepts a hex object and echoes it back to the client.
     */
    public Hex echoHexBinary(Hex input) {
        return input;
    }

    /**
     * This method accepts a Date/Time and echoes it back to the client.
     */
    public Date echoDate(Date input) {
        return input;
    }

    /**
     * This method accepts a BigDecimal and echoes it back to the client.
     */
    public BigDecimal echoDecimal(BigDecimal input) {
        return input;
    }

    /**
     * This method accepts a boolean and echoes it back to the client.
     */
    public boolean echoBoolean(boolean input) {
        return input;
    }
    
    /**
     * This method accepts a Map and echoes it back to the client.
     */
    public HashMap echoMap(HashMap input) {
        return input;
    }

    /**
     * This method accepts an array of Maps and echoes it back to the client.
     */
    public HashMap [] echoMapArray(HashMap [] input) {
        return input;
    }
    
    public void echoStructAsSimpleTypes(SOAPStruct inputStruct, 
                                        javax.xml.rpc.holders.StringHolder outputString, 
                                        javax.xml.rpc.holders.IntHolder outputInteger, 
                                        javax.xml.rpc.holders.FloatHolder outputFloat) {
        outputString.value = inputStruct.getVarString() ;
        outputInteger.value = inputStruct.getVarInt() ;
        outputFloat.value = inputStruct.getVarFloat() ;
    }

    public SOAPStruct echoSimpleTypesAsStruct(java.lang.String inputString, int inputInteger, float inputFloat) {
        SOAPStruct s = new SOAPStruct(inputInteger, inputString, inputFloat) ;
        return s ;
    }

    public java.lang.String[][] echo2DStringArray(java.lang.String[][] input2DStringArray) {
        return input2DStringArray ;
    }

    public SOAPStructStruct echoNestedStruct(SOAPStructStruct inputStruct) {
        return inputStruct ;
    }

    public SOAPArrayStruct echoNestedArray(SOAPArrayStruct inputStruct) {
        return inputStruct ;
    }
}
