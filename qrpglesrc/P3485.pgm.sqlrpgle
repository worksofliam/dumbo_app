**free

ctl-opt dftactgrp(*no);

dcl-pi P3485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2715.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P1806.rpgleinc'

dcl-ds T92 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T92 FROM T92 LIMIT 1;

theCharVar = 'Hello from P3485';
dsply theCharVar;
P2715();
P30();
P1806();
return;