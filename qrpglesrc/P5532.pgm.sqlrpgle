**free

ctl-opt dftactgrp(*no);

dcl-pi P5532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1377.rpgleinc'
/copy 'qrpgleref/P1831.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P5532';
dsply theCharVar;
P1377();
P1831();
P973();
return;