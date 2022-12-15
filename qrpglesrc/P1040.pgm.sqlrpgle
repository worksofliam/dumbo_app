**free

ctl-opt dftactgrp(*no);

dcl-pi P1040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P1040';
dsply theCharVar;
P420();
P114();
P516();
return;