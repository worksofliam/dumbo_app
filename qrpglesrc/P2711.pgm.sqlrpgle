**free

ctl-opt dftactgrp(*no);

dcl-pi P2711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2265.rpgleinc'
/copy 'qrpgleref/P706.rpgleinc'
/copy 'qrpgleref/P2360.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P2711';
dsply theCharVar;
P2265();
P706();
P2360();
return;