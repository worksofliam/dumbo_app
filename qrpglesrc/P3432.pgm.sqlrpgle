**free

ctl-opt dftactgrp(*no);

dcl-pi P3432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1015.rpgleinc'
/copy 'qrpgleref/P2374.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds theTable extname('T1754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1754 LIMIT 1;

theCharVar = 'Hello from P3432';
dsply theCharVar;
P1015();
P2374();
P346();
return;