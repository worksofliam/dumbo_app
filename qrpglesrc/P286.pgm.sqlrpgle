**free

ctl-opt dftactgrp(*no);

dcl-pi P286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T737') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T737 LIMIT 1;

theCharVar = 'Hello from P286';
dsply theCharVar;
P253();
P112();
P105();
return;