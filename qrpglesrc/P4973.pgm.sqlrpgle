**free

ctl-opt dftactgrp(*no);

dcl-pi P4973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P4906.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'

dcl-ds T414 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T414 FROM T414 LIMIT 1;

theCharVar = 'Hello from P4973';
dsply theCharVar;
P865();
P4906();
P923();
return;