**free

ctl-opt dftactgrp(*no);

dcl-pi P2634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1726.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P2634';
dsply theCharVar;
P1726();
P2111();
P1116();
return;