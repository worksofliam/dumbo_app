**free

ctl-opt dftactgrp(*no);

dcl-pi P3466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1666.rpgleinc'
/copy 'qrpgleref/P2386.rpgleinc'
/copy 'qrpgleref/P2914.rpgleinc'

dcl-ds theTable extname('T867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T867 LIMIT 1;

theCharVar = 'Hello from P3466';
dsply theCharVar;
P1666();
P2386();
P2914();
return;