**free

ctl-opt dftactgrp(*no);

dcl-pi P4308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds T187 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T187 FROM T187 LIMIT 1;

theCharVar = 'Hello from P4308';
dsply theCharVar;
P829();
P2038();
P342();
return;