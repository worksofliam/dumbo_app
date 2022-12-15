**free

ctl-opt dftactgrp(*no);

dcl-pi P1133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T660') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T660 LIMIT 1;

theCharVar = 'Hello from P1133';
dsply theCharVar;
P431();
P353();
P112();
return;