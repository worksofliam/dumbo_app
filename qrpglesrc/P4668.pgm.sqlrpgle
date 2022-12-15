**free

ctl-opt dftactgrp(*no);

dcl-pi P4668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2176.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'

dcl-ds theTable extname('T1730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1730 LIMIT 1;

theCharVar = 'Hello from P4668';
dsply theCharVar;
P2176();
P1408();
P1358();
return;