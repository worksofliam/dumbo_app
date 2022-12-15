**free

ctl-opt dftactgrp(*no);

dcl-pi P1797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P1163.rpgleinc'

dcl-ds T844 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T844 FROM T844 LIMIT 1;

theCharVar = 'Hello from P1797';
dsply theCharVar;
P477();
P585();
P1163();
return;