**free

ctl-opt dftactgrp(*no);

dcl-pi P2104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T1159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1159 LIMIT 1;

theCharVar = 'Hello from P2104';
dsply theCharVar;
P668();
P570();
P341();
return;