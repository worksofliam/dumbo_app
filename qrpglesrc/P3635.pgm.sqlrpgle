**free

ctl-opt dftactgrp(*no);

dcl-pi P3635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'

dcl-ds theTable extname('T1113') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1113 LIMIT 1;

theCharVar = 'Hello from P3635';
dsply theCharVar;
P382();
P1078();
P574();
return;