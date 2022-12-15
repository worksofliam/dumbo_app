**free

ctl-opt dftactgrp(*no);

dcl-pi P3398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2067.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P1109.rpgleinc'

dcl-ds theTable extname('T1186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1186 LIMIT 1;

theCharVar = 'Hello from P3398';
dsply theCharVar;
P2067();
P199();
P1109();
return;