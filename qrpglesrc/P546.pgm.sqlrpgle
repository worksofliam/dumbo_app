**free

ctl-opt dftactgrp(*no);

dcl-pi P546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P546';
dsply theCharVar;
P350();
P89();
P190();
return;