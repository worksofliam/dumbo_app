**free

ctl-opt dftactgrp(*no);

dcl-pi P3550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds theTable extname('T1568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1568 LIMIT 1;

theCharVar = 'Hello from P3550';
dsply theCharVar;
P290();
P1186();
P418();
return;