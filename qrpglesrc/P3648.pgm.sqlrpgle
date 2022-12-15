**free

ctl-opt dftactgrp(*no);

dcl-pi P3648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P834.rpgleinc'
/copy 'qrpgleref/P2263.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P3648';
dsply theCharVar;
P834();
P2263();
P1142();
return;