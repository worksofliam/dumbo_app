**free

ctl-opt dftactgrp(*no);

dcl-pi P300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds theTable extname('T224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T224 LIMIT 1;

theCharVar = 'Hello from P300';
dsply theCharVar;
P281();
P47();
P194();
return;