**free

ctl-opt dftactgrp(*no);

dcl-pi P3259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2626.rpgleinc'
/copy 'qrpgleref/P2975.rpgleinc'
/copy 'qrpgleref/P3122.rpgleinc'

dcl-ds theTable extname('T1537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1537 LIMIT 1;

theCharVar = 'Hello from P3259';
dsply theCharVar;
P2626();
P2975();
P3122();
return;