**free

ctl-opt dftactgrp(*no);

dcl-pi P2427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1270.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds T26 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T26 FROM T26 LIMIT 1;

theCharVar = 'Hello from P2427';
dsply theCharVar;
P1270();
P495();
P361();
return;