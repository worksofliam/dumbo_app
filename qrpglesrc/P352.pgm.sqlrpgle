**free

ctl-opt dftactgrp(*no);

dcl-pi P352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T762 LIMIT 1;

theCharVar = 'Hello from P352';
dsply theCharVar;
P83();
P186();
P297();
return;