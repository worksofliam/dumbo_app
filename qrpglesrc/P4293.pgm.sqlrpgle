**free

ctl-opt dftactgrp(*no);

dcl-pi P4293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2127.rpgleinc'
/copy 'qrpgleref/P3622.rpgleinc'
/copy 'qrpgleref/P4190.rpgleinc'

dcl-ds theTable extname('T1543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1543 LIMIT 1;

theCharVar = 'Hello from P4293';
dsply theCharVar;
P2127();
P3622();
P4190();
return;