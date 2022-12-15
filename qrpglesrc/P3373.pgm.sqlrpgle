**free

ctl-opt dftactgrp(*no);

dcl-pi P3373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3249.rpgleinc'
/copy 'qrpgleref/P2470.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P3373';
dsply theCharVar;
P3249();
P2470();
P589();
return;