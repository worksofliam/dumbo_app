**free

ctl-opt dftactgrp(*no);

dcl-pi P488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P488';
dsply theCharVar;
P420();
P162();
P391();
return;