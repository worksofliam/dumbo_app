**free

ctl-opt dftactgrp(*no);

dcl-pi P366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P366';
dsply theCharVar;
P154();
P175();
P102();
return;