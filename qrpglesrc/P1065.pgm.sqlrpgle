**free

ctl-opt dftactgrp(*no);

dcl-pi P1065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'

dcl-ds T238 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T238 FROM T238 LIMIT 1;

theCharVar = 'Hello from P1065';
dsply theCharVar;
P846();
P98();
P989();
return;