**free

ctl-opt dftactgrp(*no);

dcl-pi P219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P219';
dsply theCharVar;
P54();
P109();
P130();
return;