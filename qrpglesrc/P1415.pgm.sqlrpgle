**free

ctl-opt dftactgrp(*no);

dcl-pi P1415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T451') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T451 LIMIT 1;

theCharVar = 'Hello from P1415';
dsply theCharVar;
P1046();
P697();
P820();
return;