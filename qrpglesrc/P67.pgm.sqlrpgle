**free

ctl-opt dftactgrp(*no);

dcl-pi P67;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T169 LIMIT 1;

theCharVar = 'Hello from P67';
dsply theCharVar;
P40();
P1();
return;