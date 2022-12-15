**free

ctl-opt dftactgrp(*no);

dcl-pi P1659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P1304.rpgleinc'
/copy 'qrpgleref/P1148.rpgleinc'

dcl-ds theTable extname('T371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T371 LIMIT 1;

theCharVar = 'Hello from P1659';
dsply theCharVar;
P477();
P1304();
P1148();
return;