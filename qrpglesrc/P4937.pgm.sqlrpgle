**free

ctl-opt dftactgrp(*no);

dcl-pi P4937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2107.rpgleinc'
/copy 'qrpgleref/P4876.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'

dcl-ds theTable extname('T1190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1190 LIMIT 1;

theCharVar = 'Hello from P4937';
dsply theCharVar;
P2107();
P4876();
P480();
return;