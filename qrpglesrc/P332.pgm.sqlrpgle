**free

ctl-opt dftactgrp(*no);

dcl-pi P332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P332';
dsply theCharVar;
P164();
P237();
P78();
return;