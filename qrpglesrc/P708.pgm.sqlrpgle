**free

ctl-opt dftactgrp(*no);

dcl-pi P708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds theTable extname('T47') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T47 LIMIT 1;

theCharVar = 'Hello from P708';
dsply theCharVar;
P697();
P568();
P226();
return;