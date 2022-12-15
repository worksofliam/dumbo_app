**free

ctl-opt dftactgrp(*no);

dcl-pi P136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P136';
dsply theCharVar;
P82();
P64();
P19();
return;