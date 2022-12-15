**free

ctl-opt dftactgrp(*no);

dcl-pi P193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1090') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1090 LIMIT 1;

theCharVar = 'Hello from P193';
dsply theCharVar;
P59();
P96();
P79();
return;