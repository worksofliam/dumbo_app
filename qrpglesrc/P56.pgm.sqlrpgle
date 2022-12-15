**free

ctl-opt dftactgrp(*no);

dcl-pi P56;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T182 LIMIT 1;

theCharVar = 'Hello from P56';
dsply theCharVar;
P10();
P55();
P23();
return;