**free

ctl-opt dftactgrp(*no);

dcl-pi P1283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P974.rpgleinc'
/copy 'qrpgleref/P1133.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'

dcl-ds theTable extname('T322') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T322 LIMIT 1;

theCharVar = 'Hello from P1283';
dsply theCharVar;
P974();
P1133();
P1063();
return;