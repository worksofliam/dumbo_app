**free

ctl-opt dftactgrp(*no);

dcl-pi P882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P882';
dsply theCharVar;
P353();
P719();
P483();
return;