**free

ctl-opt dftactgrp(*no);

dcl-pi P75;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T239 LIMIT 1;

theCharVar = 'Hello from P75';
dsply theCharVar;
P34();
P28();
P60();
return;