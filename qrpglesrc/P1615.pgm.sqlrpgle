**free

ctl-opt dftactgrp(*no);

dcl-pi P1615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1219.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'

dcl-ds theTable extname('T1063') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1063 LIMIT 1;

theCharVar = 'Hello from P1615';
dsply theCharVar;
P1219();
P198();
P494();
return;