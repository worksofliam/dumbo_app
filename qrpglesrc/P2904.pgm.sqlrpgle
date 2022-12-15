**free

ctl-opt dftactgrp(*no);

dcl-pi P2904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P2739.rpgleinc'
/copy 'qrpgleref/P1688.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2904';
dsply theCharVar;
P233();
P2739();
P1688();
return;