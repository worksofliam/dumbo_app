**free

ctl-opt dftactgrp(*no);

dcl-pi P2290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'

dcl-ds theTable extname('T758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T758 LIMIT 1;

theCharVar = 'Hello from P2290';
dsply theCharVar;
P750();
P324();
P568();
return;