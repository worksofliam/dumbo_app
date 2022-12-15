**free

ctl-opt dftactgrp(*no);

dcl-pi P1340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1124.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'

dcl-ds theTable extname('T990') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T990 LIMIT 1;

theCharVar = 'Hello from P1340';
dsply theCharVar;
P1124();
P225();
P318();
return;