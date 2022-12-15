**free

ctl-opt dftactgrp(*no);

dcl-pi P2266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1372.rpgleinc'
/copy 'qrpgleref/P1605.rpgleinc'
/copy 'qrpgleref/P2225.rpgleinc'

dcl-ds theTable extname('T1400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1400 LIMIT 1;

theCharVar = 'Hello from P2266';
dsply theCharVar;
P1372();
P1605();
P2225();
return;