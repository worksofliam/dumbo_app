**free

ctl-opt dftactgrp(*no);

dcl-pi P1060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P986.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T623 LIMIT 1;

theCharVar = 'Hello from P1060';
dsply theCharVar;
P986();
P100();
P216();
return;