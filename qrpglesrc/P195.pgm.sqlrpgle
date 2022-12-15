**free

ctl-opt dftactgrp(*no);

dcl-pi P195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T963') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T963 LIMIT 1;

theCharVar = 'Hello from P195';
dsply theCharVar;
P25();
P134();
P192();
return;