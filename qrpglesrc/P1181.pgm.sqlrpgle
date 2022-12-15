**free

ctl-opt dftactgrp(*no);

dcl-pi P1181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P878.rpgleinc'

dcl-ds theTable extname('T689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T689 LIMIT 1;

theCharVar = 'Hello from P1181';
dsply theCharVar;
P221();
P28();
P878();
return;