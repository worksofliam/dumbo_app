**free

ctl-opt dftactgrp(*no);

dcl-pi P560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P560';
dsply theCharVar;
P252();
P398();
P6();
return;