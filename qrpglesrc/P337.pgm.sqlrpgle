**free

ctl-opt dftactgrp(*no);

dcl-pi P337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T156') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T156 LIMIT 1;

theCharVar = 'Hello from P337';
dsply theCharVar;
P182();
P227();
P184();
return;