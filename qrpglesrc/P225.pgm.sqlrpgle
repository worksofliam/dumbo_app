**free

ctl-opt dftactgrp(*no);

dcl-pi P225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds theTable extname('T704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T704 LIMIT 1;

theCharVar = 'Hello from P225';
dsply theCharVar;
P63();
P146();
P175();
return;