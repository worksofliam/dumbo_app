**free

ctl-opt dftactgrp(*no);

dcl-pi P2313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1335.rpgleinc'
/copy 'qrpgleref/P1941.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P2313';
dsply theCharVar;
P1335();
P1941();
P716();
return;