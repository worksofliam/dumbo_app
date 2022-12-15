**free

ctl-opt dftactgrp(*no);

dcl-pi P2879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2625.rpgleinc'
/copy 'qrpgleref/P2335.rpgleinc'
/copy 'qrpgleref/P2826.rpgleinc'

dcl-ds theTable extname('T1796') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1796 LIMIT 1;

theCharVar = 'Hello from P2879';
dsply theCharVar;
P2625();
P2335();
P2826();
return;