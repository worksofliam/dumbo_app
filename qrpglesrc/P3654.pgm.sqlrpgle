**free

ctl-opt dftactgrp(*no);

dcl-pi P3654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3051.rpgleinc'
/copy 'qrpgleref/P1522.rpgleinc'
/copy 'qrpgleref/P3591.rpgleinc'

dcl-ds theTable extname('T803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T803 LIMIT 1;

theCharVar = 'Hello from P3654';
dsply theCharVar;
P3051();
P1522();
P3591();
return;