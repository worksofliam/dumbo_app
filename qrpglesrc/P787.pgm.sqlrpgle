**free

ctl-opt dftactgrp(*no);

dcl-pi P787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds theTable extname('T538') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T538 LIMIT 1;

theCharVar = 'Hello from P787';
dsply theCharVar;
P240();
P750();
P233();
return;