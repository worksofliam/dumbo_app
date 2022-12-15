**free

ctl-opt dftactgrp(*no);

dcl-pi P1963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P1595.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P1963';
dsply theCharVar;
P494();
P1507();
P1595();
return;