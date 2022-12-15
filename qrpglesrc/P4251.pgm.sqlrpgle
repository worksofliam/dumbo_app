**free

ctl-opt dftactgrp(*no);

dcl-pi P4251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3885.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'
/copy 'qrpgleref/P3579.rpgleinc'

dcl-ds theTable extname('T1397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1397 LIMIT 1;

theCharVar = 'Hello from P4251';
dsply theCharVar;
P3885();
P836();
P3579();
return;