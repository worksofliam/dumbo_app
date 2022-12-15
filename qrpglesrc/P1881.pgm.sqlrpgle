**free

ctl-opt dftactgrp(*no);

dcl-pi P1881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1575.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P1881';
dsply theCharVar;
P1575();
P270();
P1727();
return;