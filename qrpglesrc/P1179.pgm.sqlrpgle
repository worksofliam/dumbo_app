**free

ctl-opt dftactgrp(*no);

dcl-pi P1179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P1179';
dsply theCharVar;
P1065();
P213();
P1112();
return;