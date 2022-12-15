**free

ctl-opt dftactgrp(*no);

dcl-pi P58;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds T495 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T495 FROM T495 LIMIT 1;

theCharVar = 'Hello from P58';
dsply theCharVar;
P47();
P54();
P44();
return;