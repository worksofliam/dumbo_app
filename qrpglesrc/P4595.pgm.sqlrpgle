**free

ctl-opt dftactgrp(*no);

dcl-pi P4595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P4430.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P4595';
dsply theCharVar;
P665();
P4430();
P2070();
return;