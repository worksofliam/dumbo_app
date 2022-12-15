**free

ctl-opt dftactgrp(*no);

dcl-pi P4929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P3812.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P4929';
dsply theCharVar;
P1046();
P3812();
P765();
return;