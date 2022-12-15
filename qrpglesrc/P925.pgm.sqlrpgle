**free

ctl-opt dftactgrp(*no);

dcl-pi P925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P925';
dsply theCharVar;
P404();
P408();
P662();
return;