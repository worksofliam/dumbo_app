**free

ctl-opt dftactgrp(*no);

dcl-pi P4336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3657.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P3266.rpgleinc'

dcl-ds theTable extname('T1512') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1512 LIMIT 1;

theCharVar = 'Hello from P4336';
dsply theCharVar;
P3657();
P1418();
P3266();
return;