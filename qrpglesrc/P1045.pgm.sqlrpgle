**free

ctl-opt dftactgrp(*no);

dcl-pi P1045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'

dcl-ds theTable extname('T1369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1369 LIMIT 1;

theCharVar = 'Hello from P1045';
dsply theCharVar;
P237();
P54();
P974();
return;