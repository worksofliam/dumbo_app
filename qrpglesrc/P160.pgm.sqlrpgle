**free

ctl-opt dftactgrp(*no);

dcl-pi P160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds theTable extname('T789') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T789 LIMIT 1;

theCharVar = 'Hello from P160';
dsply theCharVar;
P14();
P40();
P154();
return;