**free

ctl-opt dftactgrp(*no);

dcl-pi P1440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'

dcl-ds theTable extname('T829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T829 LIMIT 1;

theCharVar = 'Hello from P1440';
dsply theCharVar;
P4();
P436();
P1223();
return;