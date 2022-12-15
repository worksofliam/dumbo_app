**free

ctl-opt dftactgrp(*no);

dcl-pi P1513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T909') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T909 LIMIT 1;

theCharVar = 'Hello from P1513';
dsply theCharVar;
P55();
P726();
P278();
return;