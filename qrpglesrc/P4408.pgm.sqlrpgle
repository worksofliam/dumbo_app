**free

ctl-opt dftactgrp(*no);

dcl-pi P4408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P2710.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P4408';
dsply theCharVar;
P835();
P1182();
P2710();
return;