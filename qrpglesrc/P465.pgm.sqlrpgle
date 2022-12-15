**free

ctl-opt dftactgrp(*no);

dcl-pi P465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'

dcl-ds theTable extname('T1296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1296 LIMIT 1;

theCharVar = 'Hello from P465';
dsply theCharVar;
P393();
P372();
P306();
return;