**free

ctl-opt dftactgrp(*no);

dcl-pi P696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds theTable extname('T1247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1247 LIMIT 1;

theCharVar = 'Hello from P696';
dsply theCharVar;
P49();
P279();
P425();
return;