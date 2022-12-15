**free

ctl-opt dftactgrp(*no);

dcl-pi P1387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds theTable extname('T699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T699 LIMIT 1;

theCharVar = 'Hello from P1387';
dsply theCharVar;
P147();
P47();
P67();
return;