**free

ctl-opt dftactgrp(*no);

dcl-pi P1579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1071.rpgleinc'
/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds theTable extname('T441') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T441 LIMIT 1;

theCharVar = 'Hello from P1579';
dsply theCharVar;
P1071();
P1232();
P252();
return;