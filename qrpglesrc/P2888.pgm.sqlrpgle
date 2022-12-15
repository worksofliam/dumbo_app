**free

ctl-opt dftactgrp(*no);

dcl-pi P2888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1252.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P2010.rpgleinc'

dcl-ds theTable extname('T1241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1241 LIMIT 1;

theCharVar = 'Hello from P2888';
dsply theCharVar;
P1252();
P1733();
P2010();
return;