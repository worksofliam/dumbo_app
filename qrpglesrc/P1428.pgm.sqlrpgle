**free

ctl-opt dftactgrp(*no);

dcl-pi P1428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P1084.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P1428';
dsply theCharVar;
P597();
P73();
P1084();
return;