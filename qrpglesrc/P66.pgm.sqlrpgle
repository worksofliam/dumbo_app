**free

ctl-opt dftactgrp(*no);

dcl-pi P66;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T1527') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1527 LIMIT 1;

theCharVar = 'Hello from P66';
dsply theCharVar;
P43();
P26();
return;