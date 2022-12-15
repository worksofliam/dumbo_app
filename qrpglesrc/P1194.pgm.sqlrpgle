**free

ctl-opt dftactgrp(*no);

dcl-pi P1194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T334') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T334 LIMIT 1;

theCharVar = 'Hello from P1194';
dsply theCharVar;
P955();
P559();
P50();
return;