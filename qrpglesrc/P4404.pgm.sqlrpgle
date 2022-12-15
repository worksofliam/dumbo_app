**free

ctl-opt dftactgrp(*no);

dcl-pi P4404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3953.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P1931.rpgleinc'

theCharVar = 'Hello from P4404';
dsply theCharVar;
P3953();
P282();
P1931();
return;