**free

ctl-opt dftactgrp(*no);

dcl-pi P181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T1090') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1090 LIMIT 1;

theCharVar = 'Hello from P181';
dsply theCharVar;
P110();
P180();
P141();
return;