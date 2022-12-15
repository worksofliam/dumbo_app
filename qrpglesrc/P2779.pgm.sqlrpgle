**free

ctl-opt dftactgrp(*no);

dcl-pi P2779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P2051.rpgleinc'
/copy 'qrpgleref/P1976.rpgleinc'

dcl-ds theTable extname('T737') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T737 LIMIT 1;

theCharVar = 'Hello from P2779';
dsply theCharVar;
P814();
P2051();
P1976();
return;