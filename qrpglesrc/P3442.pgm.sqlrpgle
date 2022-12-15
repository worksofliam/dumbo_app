**free

ctl-opt dftactgrp(*no);

dcl-pi P3442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P1054.rpgleinc'
/copy 'qrpgleref/P2011.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P3442';
dsply theCharVar;
P2073();
P1054();
P2011();
return;