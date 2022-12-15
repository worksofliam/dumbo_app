**free

ctl-opt dftactgrp(*no);

dcl-pi P1164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P1164';
dsply theCharVar;
P438();
P921();
P856();
return;