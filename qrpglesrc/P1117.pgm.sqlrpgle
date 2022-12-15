**free

ctl-opt dftactgrp(*no);

dcl-pi P1117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'

dcl-ds theTable extname('T197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T197 LIMIT 1;

theCharVar = 'Hello from P1117';
dsply theCharVar;
P895();
P198();
P663();
return;