**free

ctl-opt dftactgrp(*no);

dcl-pi P2508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P1269.rpgleinc'
/copy 'qrpgleref/P2155.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P2508';
dsply theCharVar;
P990();
P1269();
P2155();
return;