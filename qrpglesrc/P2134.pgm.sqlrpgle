**free

ctl-opt dftactgrp(*no);

dcl-pi P2134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P2089.rpgleinc'
/copy 'qrpgleref/P2091.rpgleinc'

dcl-ds theTable extname('T530') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T530 LIMIT 1;

theCharVar = 'Hello from P2134';
dsply theCharVar;
P110();
P2089();
P2091();
return;