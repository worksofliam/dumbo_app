**free

ctl-opt dftactgrp(*no);

dcl-pi P2843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P1834.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P2843';
dsply theCharVar;
P420();
P1051();
P1834();
return;