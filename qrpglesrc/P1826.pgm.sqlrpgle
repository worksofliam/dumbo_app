**free

ctl-opt dftactgrp(*no);

dcl-pi P1826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1587.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T510 LIMIT 1;

theCharVar = 'Hello from P1826';
dsply theCharVar;
P1587();
P1055();
P167();
return;