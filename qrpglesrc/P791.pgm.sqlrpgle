**free

ctl-opt dftactgrp(*no);

dcl-pi P791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'

dcl-ds theTable extname('T311') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T311 LIMIT 1;

theCharVar = 'Hello from P791';
dsply theCharVar;
P277();
P771();
P151();
return;