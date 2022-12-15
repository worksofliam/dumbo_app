**free

ctl-opt dftactgrp(*no);

dcl-pi P1353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'

dcl-ds T627 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T627 FROM T627 LIMIT 1;

theCharVar = 'Hello from P1353';
dsply theCharVar;
P818();
P6();
P714();
return;