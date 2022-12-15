**free

ctl-opt dftactgrp(*no);

dcl-pi P2658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'

dcl-ds theTable extname('T754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T754 LIMIT 1;

theCharVar = 'Hello from P2658';
dsply theCharVar;
P188();
P134();
P527();
return;