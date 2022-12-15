**free

ctl-opt dftactgrp(*no);

dcl-pi P1305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1203.rpgleinc'
/copy 'qrpgleref/P869.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'

dcl-ds theTable extname('T471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T471 LIMIT 1;

theCharVar = 'Hello from P1305';
dsply theCharVar;
P1203();
P869();
P306();
return;