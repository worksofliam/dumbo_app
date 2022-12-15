**free

ctl-opt dftactgrp(*no);

dcl-pi P2333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2306.rpgleinc'
/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P2333';
dsply theCharVar;
P2306();
P1543();
P1333();
return;