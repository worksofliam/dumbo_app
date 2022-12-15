**free

ctl-opt dftactgrp(*no);

dcl-pi P2890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1693.rpgleinc'
/copy 'qrpgleref/P1243.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T253') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T253 LIMIT 1;

theCharVar = 'Hello from P2890';
dsply theCharVar;
P1693();
P1243();
P66();
return;