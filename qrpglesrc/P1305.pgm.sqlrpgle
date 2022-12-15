**free

ctl-opt dftactgrp(*no);

dcl-pi P1305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P1305';
dsply theCharVar;
P47();
P939();
P759();
return;