**free

ctl-opt dftactgrp(*no);

dcl-pi P636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P620.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P636';
dsply theCharVar;
P620();
P162();
P49();
return;