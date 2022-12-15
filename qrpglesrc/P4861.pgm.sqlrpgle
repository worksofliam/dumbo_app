**free

ctl-opt dftactgrp(*no);

dcl-pi P4861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3400.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P3957.rpgleinc'

dcl-ds theTable extname('T421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T421 LIMIT 1;

theCharVar = 'Hello from P4861';
dsply theCharVar;
P3400();
P1177();
P3957();
return;