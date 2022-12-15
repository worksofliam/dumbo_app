**free

ctl-opt dftactgrp(*no);

dcl-pi P181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T484 LIMIT 1;

theCharVar = 'Hello from P181';
dsply theCharVar;
P114();
P133();
P65();
return;