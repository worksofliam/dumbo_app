**free

ctl-opt dftactgrp(*no);

dcl-pi P1803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1757.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P1803';
dsply theCharVar;
P1757();
P233();
P391();
return;