**free

ctl-opt dftactgrp(*no);

dcl-pi P614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds theTable extname('T312') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T312 LIMIT 1;

theCharVar = 'Hello from P614';
dsply theCharVar;
P466();
P478();
P203();
return;