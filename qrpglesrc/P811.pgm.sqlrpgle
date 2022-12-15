**free

ctl-opt dftactgrp(*no);

dcl-pi P811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds theTable extname('T469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T469 LIMIT 1;

theCharVar = 'Hello from P811';
dsply theCharVar;
P277();
P698();
P437();
return;