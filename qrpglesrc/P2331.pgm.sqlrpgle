**free

ctl-opt dftactgrp(*no);

dcl-pi P2331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P1761.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'

dcl-ds theTable extname('T1806') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1806 LIMIT 1;

theCharVar = 'Hello from P2331';
dsply theCharVar;
P990();
P1761();
P1441();
return;