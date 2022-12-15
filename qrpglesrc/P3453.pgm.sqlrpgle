**free

ctl-opt dftactgrp(*no);

dcl-pi P3453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3237.rpgleinc'
/copy 'qrpgleref/P2164.rpgleinc'
/copy 'qrpgleref/P2411.rpgleinc'

dcl-ds theTable extname('T754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T754 LIMIT 1;

theCharVar = 'Hello from P3453';
dsply theCharVar;
P3237();
P2164();
P2411();
return;