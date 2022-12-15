**free

ctl-opt dftactgrp(*no);

dcl-pi P403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds theTable extname('T572') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T572 LIMIT 1;

theCharVar = 'Hello from P403';
dsply theCharVar;
P246();
P314();
P289();
return;