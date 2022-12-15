**free

ctl-opt dftactgrp(*no);

dcl-pi P505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'

dcl-ds theTable extname('T113') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T113 LIMIT 1;

theCharVar = 'Hello from P505';
dsply theCharVar;
P49();
P396();
P428();
return;