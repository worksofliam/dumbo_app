**free

ctl-opt dftactgrp(*no);

dcl-pi P2190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'

dcl-ds theTable extname('T1403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1403 LIMIT 1;

theCharVar = 'Hello from P2190';
dsply theCharVar;
P701();
P172();
P2054();
return;