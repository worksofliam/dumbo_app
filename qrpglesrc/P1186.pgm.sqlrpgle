**free

ctl-opt dftactgrp(*no);

dcl-pi P1186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T1065') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1065 LIMIT 1;

theCharVar = 'Hello from P1186';
dsply theCharVar;
P39();
P246();
P503();
return;