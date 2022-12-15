**free

ctl-opt dftactgrp(*no);

dcl-pi P1935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P1705.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'

dcl-ds theTable extname('T1028') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1028 LIMIT 1;

theCharVar = 'Hello from P1935';
dsply theCharVar;
P346();
P1705();
P798();
return;