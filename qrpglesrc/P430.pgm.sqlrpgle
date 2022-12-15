**free

ctl-opt dftactgrp(*no);

dcl-pi P430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P430';
dsply theCharVar;
P6();
P342();
P64();
return;