**free

ctl-opt dftactgrp(*no);

dcl-pi P3550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1641.rpgleinc'
/copy 'qrpgleref/P1687.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds theTable extname('T1017') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1017 LIMIT 1;

theCharVar = 'Hello from P3550';
dsply theCharVar;
P1641();
P1687();
P398();
return;