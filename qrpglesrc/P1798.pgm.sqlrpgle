**free

ctl-opt dftactgrp(*no);

dcl-pi P1798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T753') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T753 LIMIT 1;

theCharVar = 'Hello from P1798';
dsply theCharVar;
P849();
P470();
P11();
return;