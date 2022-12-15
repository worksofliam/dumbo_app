**free

ctl-opt dftactgrp(*no);

dcl-pi P5169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P3101.rpgleinc'
/copy 'qrpgleref/P3983.rpgleinc'

dcl-ds theTable extname('T1613') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1613 LIMIT 1;

theCharVar = 'Hello from P5169';
dsply theCharVar;
P450();
P3101();
P3983();
return;