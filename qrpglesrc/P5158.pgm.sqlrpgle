**free

ctl-opt dftactgrp(*no);

dcl-pi P5158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4300.rpgleinc'
/copy 'qrpgleref/P1704.rpgleinc'
/copy 'qrpgleref/P4820.rpgleinc'

dcl-ds theTable extname('T264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T264 LIMIT 1;

theCharVar = 'Hello from P5158';
dsply theCharVar;
P4300();
P1704();
P4820();
return;