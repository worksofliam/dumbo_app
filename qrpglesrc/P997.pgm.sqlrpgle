**free

ctl-opt dftactgrp(*no);

dcl-pi P997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds T973 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T973 FROM T973 LIMIT 1;

theCharVar = 'Hello from P997';
dsply theCharVar;
P165();
P257();
P305();
return;