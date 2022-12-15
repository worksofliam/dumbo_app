**free

ctl-opt dftactgrp(*no);

dcl-pi P791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'

dcl-ds T999 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T999 FROM T999 LIMIT 1;

theCharVar = 'Hello from P791';
dsply theCharVar;
P659();
P556();
P474();
return;