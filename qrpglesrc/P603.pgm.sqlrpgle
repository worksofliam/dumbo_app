**free

ctl-opt dftactgrp(*no);

dcl-pi P603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'

dcl-ds theTable extname('T486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T486 LIMIT 1;

theCharVar = 'Hello from P603';
dsply theCharVar;
P372();
P482();
P279();
return;