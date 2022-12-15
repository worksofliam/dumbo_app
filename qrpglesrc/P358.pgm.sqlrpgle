**free

ctl-opt dftactgrp(*no);

dcl-pi P358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P358';
dsply theCharVar;
P27();
P231();
P20();
return;