**free

ctl-opt dftactgrp(*no);

dcl-pi P555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P555';
dsply theCharVar;
P474();
P404();
P137();
return;