**free

ctl-opt dftactgrp(*no);

dcl-pi P1721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P1721';
dsply theCharVar;
P172();
P1019();
P451();
return;