**free

ctl-opt dftactgrp(*no);

dcl-pi P966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T1740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1740 LIMIT 1;

theCharVar = 'Hello from P966';
dsply theCharVar;
P565();
P297();
P432();
return;