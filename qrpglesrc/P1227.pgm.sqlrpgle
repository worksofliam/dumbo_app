**free

ctl-opt dftactgrp(*no);

dcl-pi P1227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P1227';
dsply theCharVar;
P745();
P1127();
P1059();
return;