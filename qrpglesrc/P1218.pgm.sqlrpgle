**free

ctl-opt dftactgrp(*no);

dcl-pi P1218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'

dcl-ds theTable extname('T1210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1210 LIMIT 1;

theCharVar = 'Hello from P1218';
dsply theCharVar;
P357();
P105();
P637();
return;