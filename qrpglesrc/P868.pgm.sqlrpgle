**free

ctl-opt dftactgrp(*no);

dcl-pi P868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds T625 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T625 FROM T625 LIMIT 1;

theCharVar = 'Hello from P868';
dsply theCharVar;
P477();
P333();
P53();
return;