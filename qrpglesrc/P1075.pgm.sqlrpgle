**free

ctl-opt dftactgrp(*no);

dcl-pi P1075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P1075';
dsply theCharVar;
P547();
P742();
P380();
return;