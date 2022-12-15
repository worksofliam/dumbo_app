**free

ctl-opt dftactgrp(*no);

dcl-pi P2539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P1840.rpgleinc'

dcl-ds theTable extname('T1648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1648 LIMIT 1;

theCharVar = 'Hello from P2539';
dsply theCharVar;
P1901();
P335();
P1840();
return;