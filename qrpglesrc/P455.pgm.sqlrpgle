**free

ctl-opt dftactgrp(*no);

dcl-pi P455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P455';
dsply theCharVar;
P299();
P312();
P134();
return;