**free

ctl-opt dftactgrp(*no);

dcl-pi P295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P267.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T735 LIMIT 1;

theCharVar = 'Hello from P295';
dsply theCharVar;
P267();
P204();
P193();
return;