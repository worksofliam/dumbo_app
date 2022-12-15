**free

ctl-opt dftactgrp(*no);

dcl-pi P759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds theTable extname('T1141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1141 LIMIT 1;

theCharVar = 'Hello from P759';
dsply theCharVar;
P34();
P31();
P678();
return;