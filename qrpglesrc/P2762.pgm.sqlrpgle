**free

ctl-opt dftactgrp(*no);

dcl-pi P2762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds theTable extname('T473') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T473 LIMIT 1;

theCharVar = 'Hello from P2762';
dsply theCharVar;
P1055();
P1101();
P108();
return;