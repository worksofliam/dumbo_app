**free

ctl-opt dftactgrp(*no);

dcl-pi P2896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2338.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P2896';
dsply theCharVar;
P2338();
P107();
P778();
return;