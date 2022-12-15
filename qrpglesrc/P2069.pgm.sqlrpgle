**free

ctl-opt dftactgrp(*no);

dcl-pi P2069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P1282.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'

dcl-ds theTable extname('T1278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1278 LIMIT 1;

theCharVar = 'Hello from P2069';
dsply theCharVar;
P421();
P1282();
P865();
return;