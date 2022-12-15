**free

ctl-opt dftactgrp(*no);

dcl-pi P577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T1206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1206 LIMIT 1;

theCharVar = 'Hello from P577';
dsply theCharVar;
P394();
P33();
P290();
return;