**free

ctl-opt dftactgrp(*no);

dcl-pi P2037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1887.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds theTable extname('T1783') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1783 LIMIT 1;

theCharVar = 'Hello from P2037';
dsply theCharVar;
P1887();
P68();
P187();
return;