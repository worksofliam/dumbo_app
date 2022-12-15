**free

ctl-opt dftactgrp(*no);

dcl-pi P1996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1948.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T1799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1799 LIMIT 1;

theCharVar = 'Hello from P1996';
dsply theCharVar;
P1948();
P709();
P277();
return;