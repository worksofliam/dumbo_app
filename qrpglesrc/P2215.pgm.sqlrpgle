**free

ctl-opt dftactgrp(*no);

dcl-pi P2215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T746') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T746 LIMIT 1;

theCharVar = 'Hello from P2215';
dsply theCharVar;
P1161();
P157();
P51();
return;