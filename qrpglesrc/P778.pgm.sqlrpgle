**free

ctl-opt dftactgrp(*no);

dcl-pi P778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T83') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T83 LIMIT 1;

theCharVar = 'Hello from P778';
dsply theCharVar;
P763();
P48();
P95();
return;