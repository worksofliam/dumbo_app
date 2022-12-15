**free

ctl-opt dftactgrp(*no);

dcl-pi P1938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P1699.rpgleinc'

dcl-ds theTable extname('T603') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T603 LIMIT 1;

theCharVar = 'Hello from P1938';
dsply theCharVar;
P808();
P226();
P1699();
return;