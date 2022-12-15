**free

ctl-opt dftactgrp(*no);

dcl-pi P1158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P831.rpgleinc'

dcl-ds T936 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T936 FROM T936 LIMIT 1;

theCharVar = 'Hello from P1158';
dsply theCharVar;
P384();
P609();
P831();
return;