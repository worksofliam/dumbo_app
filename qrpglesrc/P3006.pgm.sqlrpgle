**free

ctl-opt dftactgrp(*no);

dcl-pi P3006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P2345.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds theTable extname('T1318') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1318 LIMIT 1;

theCharVar = 'Hello from P3006';
dsply theCharVar;
P584();
P2345();
P394();
return;