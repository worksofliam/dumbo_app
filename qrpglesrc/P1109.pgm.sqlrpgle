**free

ctl-opt dftactgrp(*no);

dcl-pi P1109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1057.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P942.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P1109';
dsply theCharVar;
P1057();
P737();
P942();
return;