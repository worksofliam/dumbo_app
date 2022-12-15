**free

ctl-opt dftactgrp(*no);

dcl-pi P5022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3288.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'
/copy 'qrpgleref/P3436.rpgleinc'

dcl-ds theTable extname('T1560') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1560 LIMIT 1;

theCharVar = 'Hello from P5022';
dsply theCharVar;
P3288();
P3033();
P3436();
return;