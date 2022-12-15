**free

ctl-opt dftactgrp(*no);

dcl-pi P396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P396';
dsply theCharVar;
P102();
P370();
P341();
return;