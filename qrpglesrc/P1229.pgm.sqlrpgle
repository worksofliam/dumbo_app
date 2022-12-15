**free

ctl-opt dftactgrp(*no);

dcl-pi P1229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1193.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds theTable extname('T688') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T688 LIMIT 1;

theCharVar = 'Hello from P1229';
dsply theCharVar;
P1193();
P112();
P990();
return;