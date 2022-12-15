**free

ctl-opt dftactgrp(*no);

dcl-pi P155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P155';
dsply theCharVar;
P95();
P120();
P113();
return;