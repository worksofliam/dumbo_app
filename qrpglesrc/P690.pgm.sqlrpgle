**free

ctl-opt dftactgrp(*no);

dcl-pi P690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds theTable extname('T51') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T51 LIMIT 1;

theCharVar = 'Hello from P690';
dsply theCharVar;
P419();
P126();
P496();
return;