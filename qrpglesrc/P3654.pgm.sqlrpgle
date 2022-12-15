**free

ctl-opt dftactgrp(*no);

dcl-pi P3654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P3321.rpgleinc'
/copy 'qrpgleref/P3381.rpgleinc'

dcl-ds theTable extname('T1707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1707 LIMIT 1;

theCharVar = 'Hello from P3654';
dsply theCharVar;
P465();
P3321();
P3381();
return;