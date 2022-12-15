**free

ctl-opt dftactgrp(*no);

dcl-pi P1441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P1441';
dsply theCharVar;
P876();
P23();
P1003();
return;