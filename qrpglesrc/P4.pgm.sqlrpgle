**free

ctl-opt dftactgrp(*no);

dcl-pi P4;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T763') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T763 LIMIT 1;

theCharVar = 'Hello from P4';
dsply theCharVar;
P0();
return;