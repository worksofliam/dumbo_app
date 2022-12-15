**free

ctl-opt dftactgrp(*no);

dcl-pi P2993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1364.rpgleinc'
/copy 'qrpgleref/P1728.rpgleinc'
/copy 'qrpgleref/P1726.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P2993';
dsply theCharVar;
P1364();
P1728();
P1726();
return;