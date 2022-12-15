**free

ctl-opt dftactgrp(*no);

dcl-pi P5608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2114.rpgleinc'
/copy 'qrpgleref/P5216.rpgleinc'
/copy 'qrpgleref/P2912.rpgleinc'

dcl-ds theTable extname('T1086') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1086 LIMIT 1;

theCharVar = 'Hello from P5608';
dsply theCharVar;
P2114();
P5216();
P2912();
return;