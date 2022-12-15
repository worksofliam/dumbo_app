**free

ctl-opt dftactgrp(*no);

dcl-pi P1375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P931.rpgleinc'

dcl-ds T186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T186 FROM T186 LIMIT 1;

theCharVar = 'Hello from P1375';
dsply theCharVar;
P200();
P978();
P931();
return;