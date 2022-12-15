**free

ctl-opt dftactgrp(*no);

dcl-pi P1241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds theTable extname('T1863') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1863 LIMIT 1;

theCharVar = 'Hello from P1241';
dsply theCharVar;
P171();
P662();
P481();
return;