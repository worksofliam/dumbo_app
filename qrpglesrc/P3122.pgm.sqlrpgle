**free

ctl-opt dftactgrp(*no);

dcl-pi P3122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2783.rpgleinc'
/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P1232.rpgleinc'

dcl-ds theTable extname('T906') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T906 LIMIT 1;

theCharVar = 'Hello from P3122';
dsply theCharVar;
P2783();
P1401();
P1232();
return;