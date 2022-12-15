**free

ctl-opt dftactgrp(*no);

dcl-pi P1912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds theTable extname('T1123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1123 LIMIT 1;

theCharVar = 'Hello from P1912';
dsply theCharVar;
P1901();
P388();
P652();
return;