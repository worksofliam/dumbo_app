**free

ctl-opt dftactgrp(*no);

dcl-pi P1175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P908.rpgleinc'

dcl-ds T34 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T34 FROM T34 LIMIT 1;

theCharVar = 'Hello from P1175';
dsply theCharVar;
P818();
P424();
P908();
return;