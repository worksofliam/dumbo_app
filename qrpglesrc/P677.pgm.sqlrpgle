**free

ctl-opt dftactgrp(*no);

dcl-pi P677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T1185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1185 LIMIT 1;

theCharVar = 'Hello from P677';
dsply theCharVar;
P190();
P345();
P458();
return;