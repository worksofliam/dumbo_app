**free

ctl-opt dftactgrp(*no);

dcl-pi P1848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P1721.rpgleinc'

dcl-ds theTable extname('T439') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T439 LIMIT 1;

theCharVar = 'Hello from P1848';
dsply theCharVar;
P1395();
P476();
P1721();
return;