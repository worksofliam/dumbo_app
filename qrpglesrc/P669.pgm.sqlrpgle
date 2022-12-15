**free

ctl-opt dftactgrp(*no);

dcl-pi P669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds theTable extname('T40') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T40 LIMIT 1;

theCharVar = 'Hello from P669';
dsply theCharVar;
P568();
P109();
P598();
return;