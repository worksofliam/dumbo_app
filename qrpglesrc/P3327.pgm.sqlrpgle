**free

ctl-opt dftactgrp(*no);

dcl-pi P3327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1761.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P3327';
dsply theCharVar;
P1761();
P1798();
P12();
return;