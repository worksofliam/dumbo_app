**free

ctl-opt dftactgrp(*no);

dcl-pi P2934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2558.rpgleinc'
/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P2934';
dsply theCharVar;
P2558();
P1533();
P211();
return;