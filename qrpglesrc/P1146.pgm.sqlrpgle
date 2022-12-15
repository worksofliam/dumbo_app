**free

ctl-opt dftactgrp(*no);

dcl-pi P1146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds theTable extname('T880') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T880 LIMIT 1;

theCharVar = 'Hello from P1146';
dsply theCharVar;
P248();
P950();
P197();
return;