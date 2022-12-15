**free

ctl-opt dftactgrp(*no);

dcl-pi P1978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P1978';
dsply theCharVar;
P1399();
P189();
P337();
return;