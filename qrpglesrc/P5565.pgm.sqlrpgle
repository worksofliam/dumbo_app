**free

ctl-opt dftactgrp(*no);

dcl-pi P5565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4787.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P5278.rpgleinc'

dcl-ds theTable extname('T705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T705 LIMIT 1;

theCharVar = 'Hello from P5565';
dsply theCharVar;
P4787();
P166();
P5278();
return;