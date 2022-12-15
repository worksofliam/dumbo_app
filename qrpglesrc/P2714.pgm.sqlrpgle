**free

ctl-opt dftactgrp(*no);

dcl-pi P2714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2566.rpgleinc'
/copy 'qrpgleref/P1478.rpgleinc'
/copy 'qrpgleref/P1124.rpgleinc'

dcl-ds theTable extname('T883') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T883 LIMIT 1;

theCharVar = 'Hello from P2714';
dsply theCharVar;
P2566();
P1478();
P1124();
return;