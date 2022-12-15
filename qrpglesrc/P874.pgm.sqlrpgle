**free

ctl-opt dftactgrp(*no);

dcl-pi P874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P874';
dsply theCharVar;
P738();
P276();
P492();
return;