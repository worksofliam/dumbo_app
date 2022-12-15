**free

ctl-opt dftactgrp(*no);

dcl-pi P541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'

dcl-ds T794 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T794 FROM T794 LIMIT 1;

theCharVar = 'Hello from P541';
dsply theCharVar;
P197();
P56();
P492();
return;