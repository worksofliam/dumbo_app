**free

ctl-opt dftactgrp(*no);

dcl-pi P44;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P44';
dsply theCharVar;
P6();
P28();
P0();
return;