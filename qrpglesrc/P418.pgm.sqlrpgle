**free

ctl-opt dftactgrp(*no);

dcl-pi P418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T173 LIMIT 1;

theCharVar = 'Hello from P418';
dsply theCharVar;
P109();
P40();
return;