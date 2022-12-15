**free

ctl-opt dftactgrp(*no);

dcl-pi P827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P827';
dsply theCharVar;
P687();
P172();
P776();
return;