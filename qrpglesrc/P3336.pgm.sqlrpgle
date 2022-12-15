**free

ctl-opt dftactgrp(*no);

dcl-pi P3336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1223.rpgleinc'
/copy 'qrpgleref/P2010.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P3336';
dsply theCharVar;
P1223();
P2010();
P855();
return;