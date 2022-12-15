**free

ctl-opt dftactgrp(*no);

dcl-pi P1637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P1498.rpgleinc'
/copy 'qrpgleref/P1487.rpgleinc'

dcl-ds theTable extname('T213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T213 LIMIT 1;

theCharVar = 'Hello from P1637';
dsply theCharVar;
P514();
P1498();
P1487();
return;