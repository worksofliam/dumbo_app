**free

ctl-opt dftactgrp(*no);

dcl-pi P263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P263';
dsply theCharVar;
P20();
P249();
P164();
return;