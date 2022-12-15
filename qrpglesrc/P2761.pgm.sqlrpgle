**free

ctl-opt dftactgrp(*no);

dcl-pi P2761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2487.rpgleinc'
/copy 'qrpgleref/P2277.rpgleinc'
/copy 'qrpgleref/P2694.rpgleinc'

dcl-ds theTable extname('T978') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T978 LIMIT 1;

theCharVar = 'Hello from P2761';
dsply theCharVar;
P2487();
P2277();
P2694();
return;