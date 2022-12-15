**free

ctl-opt dftactgrp(*no);

dcl-pi P2329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1403.rpgleinc'
/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P1400.rpgleinc'

dcl-ds theTable extname('T1035') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1035 LIMIT 1;

theCharVar = 'Hello from P2329';
dsply theCharVar;
P1403();
P1665();
P1400();
return;