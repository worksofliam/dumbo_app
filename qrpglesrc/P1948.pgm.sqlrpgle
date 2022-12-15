**free

ctl-opt dftactgrp(*no);

dcl-pi P1948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1351.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'

dcl-ds theTable extname('T66') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T66 LIMIT 1;

theCharVar = 'Hello from P1948';
dsply theCharVar;
P1351();
P228();
P1427();
return;