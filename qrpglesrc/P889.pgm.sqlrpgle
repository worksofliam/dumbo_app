**free

ctl-opt dftactgrp(*no);

dcl-pi P889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P889';
dsply theCharVar;
P657();
P531();
P68();
return;