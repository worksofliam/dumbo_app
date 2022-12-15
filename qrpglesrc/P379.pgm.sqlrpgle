**free

ctl-opt dftactgrp(*no);

dcl-pi P379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'

dcl-ds theTable extname('T1782') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1782 LIMIT 1;

theCharVar = 'Hello from P379';
dsply theCharVar;
P58();
P13();
P291();
return;