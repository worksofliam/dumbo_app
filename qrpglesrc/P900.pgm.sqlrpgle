**free

ctl-opt dftactgrp(*no);

dcl-pi P900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'

dcl-ds theTable extname('T1444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1444 LIMIT 1;

theCharVar = 'Hello from P900';
dsply theCharVar;
P341();
P371();
P424();
return;