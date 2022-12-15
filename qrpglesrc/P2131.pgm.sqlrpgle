**free

ctl-opt dftactgrp(*no);

dcl-pi P2131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P1574.rpgleinc'
/copy 'qrpgleref/P1094.rpgleinc'

dcl-ds theTable extname('T1691') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1691 LIMIT 1;

theCharVar = 'Hello from P2131';
dsply theCharVar;
P303();
P1574();
P1094();
return;