**free

ctl-opt dftactgrp(*no);

dcl-pi P164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T115 LIMIT 1;

theCharVar = 'Hello from P164';
dsply theCharVar;
P163();
P87();
P126();
return;