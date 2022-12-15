**free

ctl-opt dftactgrp(*no);

dcl-pi P2063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P2060.rpgleinc'
/copy 'qrpgleref/P1572.rpgleinc'

dcl-ds theTable extname('T1300') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1300 LIMIT 1;

theCharVar = 'Hello from P2063';
dsply theCharVar;
P1172();
P2060();
P1572();
return;