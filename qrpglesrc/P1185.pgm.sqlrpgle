**free

ctl-opt dftactgrp(*no);

dcl-pi P1185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P837.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'

dcl-ds theTable extname('T1226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1226 LIMIT 1;

theCharVar = 'Hello from P1185';
dsply theCharVar;
P1029();
P837();
P675();
return;