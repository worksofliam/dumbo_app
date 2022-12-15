**free

ctl-opt dftactgrp(*no);

dcl-pi P1701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'

dcl-ds theTable extname('T912') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T912 LIMIT 1;

theCharVar = 'Hello from P1701';
dsply theCharVar;
P356();
P279();
P1129();
return;