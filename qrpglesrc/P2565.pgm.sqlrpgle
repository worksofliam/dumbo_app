**free

ctl-opt dftactgrp(*no);

dcl-pi P2565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'

dcl-ds T174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T174 FROM T174 LIMIT 1;

theCharVar = 'Hello from P2565';
dsply theCharVar;
P2268();
P752();
P151();
return;