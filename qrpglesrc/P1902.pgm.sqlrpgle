**free

ctl-opt dftactgrp(*no);

dcl-pi P1902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T1632') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1632 LIMIT 1;

theCharVar = 'Hello from P1902';
dsply theCharVar;
P317();
P852();
P139();
return;