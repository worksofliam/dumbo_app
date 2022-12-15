**free

ctl-opt dftactgrp(*no);

dcl-pi P648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'
/copy 'qrpgleref/P464.rpgleinc'

dcl-ds theTable extname('T207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T207 LIMIT 1;

theCharVar = 'Hello from P648';
dsply theCharVar;
P402();
P643();
P464();
return;