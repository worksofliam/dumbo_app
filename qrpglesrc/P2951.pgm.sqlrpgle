**free

ctl-opt dftactgrp(*no);

dcl-pi P2951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1227.rpgleinc'
/copy 'qrpgleref/P1842.rpgleinc'
/copy 'qrpgleref/P1314.rpgleinc'

dcl-ds theTable extname('T645') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T645 LIMIT 1;

theCharVar = 'Hello from P2951';
dsply theCharVar;
P1227();
P1842();
P1314();
return;