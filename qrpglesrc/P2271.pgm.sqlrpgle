**free

ctl-opt dftactgrp(*no);

dcl-pi P2271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P2253.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'

dcl-ds theTable extname('T294') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T294 LIMIT 1;

theCharVar = 'Hello from P2271';
dsply theCharVar;
P1755();
P2253();
P263();
return;