**free

ctl-opt dftactgrp(*no);

dcl-pi P3219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P1247.rpgleinc'
/copy 'qrpgleref/P2659.rpgleinc'

dcl-ds theTable extname('T1103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1103 LIMIT 1;

theCharVar = 'Hello from P3219';
dsply theCharVar;
P726();
P1247();
P2659();
return;