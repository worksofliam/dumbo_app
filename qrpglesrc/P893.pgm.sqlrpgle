**free

ctl-opt dftactgrp(*no);

dcl-pi P893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P893';
dsply theCharVar;
P90();
P272();
P742();
return;