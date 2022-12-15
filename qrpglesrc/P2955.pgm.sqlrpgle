**free

ctl-opt dftactgrp(*no);

dcl-pi P2955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'
/copy 'qrpgleref/P2369.rpgleinc'

dcl-ds theTable extname('T926') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T926 LIMIT 1;

theCharVar = 'Hello from P2955';
dsply theCharVar;
P555();
P1461();
P2369();
return;