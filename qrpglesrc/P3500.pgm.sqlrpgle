**free

ctl-opt dftactgrp(*no);

dcl-pi P3500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1032.rpgleinc'
/copy 'qrpgleref/P3121.rpgleinc'
/copy 'qrpgleref/P3222.rpgleinc'

dcl-ds theTable extname('T282') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T282 LIMIT 1;

theCharVar = 'Hello from P3500';
dsply theCharVar;
P1032();
P3121();
P3222();
return;