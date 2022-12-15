**free

ctl-opt dftactgrp(*no);

dcl-pi P1734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'

dcl-ds theTable extname('T1755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1755 LIMIT 1;

theCharVar = 'Hello from P1734';
dsply theCharVar;
P261();
P563();
P317();
return;