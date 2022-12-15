**free

ctl-opt dftactgrp(*no);

dcl-pi P1169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1169';
dsply theCharVar;
P1116();
P545();
P985();
return;