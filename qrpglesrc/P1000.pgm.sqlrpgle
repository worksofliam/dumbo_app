**free

ctl-opt dftactgrp(*no);

dcl-pi P1000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P1000';
dsply theCharVar;
P648();
P281();
P573();
return;