**free

ctl-opt dftactgrp(*no);

dcl-pi P264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'

dcl-ds theTable extname('T1150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1150 LIMIT 1;

theCharVar = 'Hello from P264';
dsply theCharVar;
P245();
P8();
P188();
return;