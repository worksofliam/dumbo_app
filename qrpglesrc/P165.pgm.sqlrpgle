**free

ctl-opt dftactgrp(*no);

dcl-pi P165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds theTable extname('T1683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1683 LIMIT 1;

theCharVar = 'Hello from P165';
dsply theCharVar;
P109();
P30();
P111();
return;