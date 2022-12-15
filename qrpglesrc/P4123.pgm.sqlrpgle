**free

ctl-opt dftactgrp(*no);

dcl-pi P4123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1510.rpgleinc'
/copy 'qrpgleref/P3387.rpgleinc'
/copy 'qrpgleref/P1806.rpgleinc'

dcl-ds theTable extname('T1773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1773 LIMIT 1;

theCharVar = 'Hello from P4123';
dsply theCharVar;
P1510();
P3387();
P1806();
return;