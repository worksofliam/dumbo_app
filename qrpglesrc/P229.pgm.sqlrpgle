**free

ctl-opt dftactgrp(*no);

dcl-pi P229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T1187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1187 LIMIT 1;

theCharVar = 'Hello from P229';
dsply theCharVar;
P82();
P66();
P112();
return;