**free

ctl-opt dftactgrp(*no);

dcl-pi P2907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P2098.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds theTable extname('T930') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T930 LIMIT 1;

theCharVar = 'Hello from P2907';
dsply theCharVar;
P342();
P2098();
P189();
return;