**free

ctl-opt dftactgrp(*no);

dcl-pi P2704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P833.rpgleinc'
/copy 'qrpgleref/P1447.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'

dcl-ds theTable extname('T676') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T676 LIMIT 1;

theCharVar = 'Hello from P2704';
dsply theCharVar;
P833();
P1447();
P232();
return;