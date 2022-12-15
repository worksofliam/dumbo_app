**free

ctl-opt dftactgrp(*no);

dcl-pi P1402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds theTable extname('T154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T154 LIMIT 1;

theCharVar = 'Hello from P1402';
dsply theCharVar;
P770();
P868();
P571();
return;