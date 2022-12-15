**free

ctl-opt dftactgrp(*no);

dcl-pi P949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds theTable extname('T1271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1271 LIMIT 1;

theCharVar = 'Hello from P949';
dsply theCharVar;
P886();
P101();
P873();
return;