**free

ctl-opt dftactgrp(*no);

dcl-pi P1866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P898.rpgleinc'

dcl-ds theTable extname('T1850') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1850 LIMIT 1;

theCharVar = 'Hello from P1866';
dsply theCharVar;
P182();
P397();
P898();
return;