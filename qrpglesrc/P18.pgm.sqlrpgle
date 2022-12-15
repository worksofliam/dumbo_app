**free

ctl-opt dftactgrp(*no);

dcl-pi P18;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T1007') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1007 LIMIT 1;

theCharVar = 'Hello from P18';
dsply theCharVar;
P9();
P13();
P4();
return;