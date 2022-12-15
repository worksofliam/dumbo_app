**free

ctl-opt dftactgrp(*no);

dcl-pi P1277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'

dcl-ds T460 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T460 FROM T460 LIMIT 1;

theCharVar = 'Hello from P1277';
dsply theCharVar;
P158();
P359();
P1033();
return;