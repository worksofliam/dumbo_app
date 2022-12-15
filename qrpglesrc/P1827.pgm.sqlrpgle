**free

ctl-opt dftactgrp(*no);

dcl-pi P1827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T577 LIMIT 1;

theCharVar = 'Hello from P1827';
dsply theCharVar;
P1192();
P387();
P68();
return;