**free

ctl-opt dftactgrp(*no);

dcl-pi P2017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P1094.rpgleinc'

dcl-ds theTable extname('T1032') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1032 LIMIT 1;

theCharVar = 'Hello from P2017';
dsply theCharVar;
P647();
P419();
P1094();
return;