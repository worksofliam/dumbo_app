**free

ctl-opt dftactgrp(*no);

dcl-pi P3250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2656.rpgleinc'
/copy 'qrpgleref/P3203.rpgleinc'
/copy 'qrpgleref/P2655.rpgleinc'

dcl-ds theTable extname('T943') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T943 LIMIT 1;

theCharVar = 'Hello from P3250';
dsply theCharVar;
P2656();
P3203();
P2655();
return;