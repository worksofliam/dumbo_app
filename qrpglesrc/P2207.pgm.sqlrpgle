**free

ctl-opt dftactgrp(*no);

dcl-pi P2207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1886.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'
/copy 'qrpgleref/P2163.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P2207';
dsply theCharVar;
P1886();
P645();
P2163();
return;