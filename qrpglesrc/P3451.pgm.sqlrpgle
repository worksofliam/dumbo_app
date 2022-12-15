**free

ctl-opt dftactgrp(*no);

dcl-pi P3451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'

dcl-ds theTable extname('T1864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1864 LIMIT 1;

theCharVar = 'Hello from P3451';
dsply theCharVar;
P1202();
P1656();
P667();
return;