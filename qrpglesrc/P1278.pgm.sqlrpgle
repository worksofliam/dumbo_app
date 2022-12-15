**free

ctl-opt dftactgrp(*no);

dcl-pi P1278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P909.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P1278';
dsply theCharVar;
P1067();
P909();
P432();
return;