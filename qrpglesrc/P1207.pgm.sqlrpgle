**free

ctl-opt dftactgrp(*no);

dcl-pi P1207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds theTable extname('T655') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T655 LIMIT 1;

theCharVar = 'Hello from P1207';
dsply theCharVar;
P538();
P1114();
P723();
return;