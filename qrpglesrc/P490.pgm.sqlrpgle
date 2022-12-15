**free

ctl-opt dftactgrp(*no);

dcl-pi P490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T678') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T678 LIMIT 1;

theCharVar = 'Hello from P490';
dsply theCharVar;
P283();
P120();
P116();
return;