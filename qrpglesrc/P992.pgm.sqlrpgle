**free

ctl-opt dftactgrp(*no);

dcl-pi P992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P992';
dsply theCharVar;
P385();
P304();
P519();
return;