**free

ctl-opt dftactgrp(*no);

dcl-pi P245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds theTable extname('T831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T831 LIMIT 1;

theCharVar = 'Hello from P245';
dsply theCharVar;
P4();
P152();
P160();
return;