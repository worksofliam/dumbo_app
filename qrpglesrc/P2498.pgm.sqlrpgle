**free

ctl-opt dftactgrp(*no);

dcl-pi P2498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P2422.rpgleinc'
/copy 'qrpgleref/P1522.rpgleinc'

dcl-ds theTable extname('T887') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T887 LIMIT 1;

theCharVar = 'Hello from P2498';
dsply theCharVar;
P968();
P2422();
P1522();
return;