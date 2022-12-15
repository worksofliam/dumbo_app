**free

ctl-opt dftactgrp(*no);

dcl-pi P114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T513 LIMIT 1;

theCharVar = 'Hello from P114';
dsply theCharVar;
P45();
P37();
P14();
return;