**free

ctl-opt dftactgrp(*no);

dcl-pi P5115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4187.rpgleinc'
/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P4565.rpgleinc'

dcl-ds theTable extname('T1644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1644 LIMIT 1;

theCharVar = 'Hello from P5115';
dsply theCharVar;
P4187();
P2073();
P4565();
return;