**free

ctl-opt dftactgrp(*no);

dcl-pi P4313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1606.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P3203.rpgleinc'

dcl-ds theTable extname('T284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T284 LIMIT 1;

theCharVar = 'Hello from P4313';
dsply theCharVar;
P1606();
P1710();
P3203();
return;