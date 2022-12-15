**free

ctl-opt dftactgrp(*no);

dcl-pi P103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T1654') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1654 LIMIT 1;

theCharVar = 'Hello from P103';
dsply theCharVar;
P69();
P75();
P80();
return;