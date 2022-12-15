**free

ctl-opt dftactgrp(*no);

dcl-pi P3645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1904.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P1640.rpgleinc'

dcl-ds theTable extname('T1036') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1036 LIMIT 1;

theCharVar = 'Hello from P3645';
dsply theCharVar;
P1904();
P34();
P1640();
return;