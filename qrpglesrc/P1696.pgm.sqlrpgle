**free

ctl-opt dftactgrp(*no);

dcl-pi P1696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P1650.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P1696';
dsply theCharVar;
P756();
P814();
P1650();
return;