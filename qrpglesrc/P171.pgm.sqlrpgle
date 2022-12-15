**free

ctl-opt dftactgrp(*no);

dcl-pi P171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T696 LIMIT 1;

theCharVar = 'Hello from P171';
dsply theCharVar;
P50();
P68();
P119();
return;