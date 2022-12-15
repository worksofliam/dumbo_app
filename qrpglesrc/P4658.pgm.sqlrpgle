**free

ctl-opt dftactgrp(*no);

dcl-pi P4658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3547.rpgleinc'
/copy 'qrpgleref/P2537.rpgleinc'
/copy 'qrpgleref/P4573.rpgleinc'

dcl-ds theTable extname('T880') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T880 LIMIT 1;

theCharVar = 'Hello from P4658';
dsply theCharVar;
P3547();
P2537();
P4573();
return;