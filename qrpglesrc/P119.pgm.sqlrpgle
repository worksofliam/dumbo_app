**free

ctl-opt dftactgrp(*no);

dcl-pi P119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P119';
dsply theCharVar;
P64();
P23();
return;