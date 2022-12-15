**free

ctl-opt dftactgrp(*no);

dcl-pi P4648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3322.rpgleinc'
/copy 'qrpgleref/P2443.rpgleinc'
/copy 'qrpgleref/P2370.rpgleinc'

dcl-ds T1296 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1296 FROM T1296 LIMIT 1;

theCharVar = 'Hello from P4648';
dsply theCharVar;
P3322();
P2443();
P2370();
return;