**free

ctl-opt dftactgrp(*no);

dcl-pi P770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'

dcl-ds theTable extname('T352') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T352 LIMIT 1;

theCharVar = 'Hello from P770';
dsply theCharVar;
P486();
P513();
P610();
return;