**free

ctl-opt dftactgrp(*no);

dcl-pi P337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P337';
dsply theCharVar;
P200();
P260();
P45();
return;