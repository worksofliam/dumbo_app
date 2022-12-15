**free

ctl-opt dftactgrp(*no);

dcl-pi P4607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P4329.rpgleinc'

dcl-ds theTable extname('T721') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T721 LIMIT 1;

theCharVar = 'Hello from P4607';
dsply theCharVar;
P704();
P243();
P4329();
return;