**free

ctl-opt dftactgrp(*no);

dcl-pi P474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds T3 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T3 FROM T3 LIMIT 1;

theCharVar = 'Hello from P474';
dsply theCharVar;
P216();
P398();
P197();
return;