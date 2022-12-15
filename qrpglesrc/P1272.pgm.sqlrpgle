**free

ctl-opt dftactgrp(*no);

dcl-pi P1272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P1272';
dsply theCharVar;
P884();
P41();
P68();
return;