**free

ctl-opt dftactgrp(*no);

dcl-pi P2951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P1819.rpgleinc'

dcl-ds theTable extname('T510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T510 LIMIT 1;

theCharVar = 'Hello from P2951';
dsply theCharVar;
P1215();
P142();
P1819();
return;