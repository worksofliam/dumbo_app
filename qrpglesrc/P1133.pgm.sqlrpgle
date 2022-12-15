**free

ctl-opt dftactgrp(*no);

dcl-pi P1133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P1133';
dsply theCharVar;
P209();
P924();
P132();
return;